
//typedef enum {false, true} bool;


#define SOP 0x7E
#define EOP 0x7E
#define ESC 0x7D
#define XOR 0x20


//добавление байтстафинга 1 байта
int bytestuff(uint8_t *buf0,uint8_t byte,int len)
{
   switch(byte)      
   {
      case SOP:
      	buf0[len++] =  ESC;
      	buf0[len++] =  SOP^XOR;
      break;
      case ESC:
      	buf0[len++] =  ESC;
      	buf0[len++] =  ESC^XOR;
      break;
      default:
      	buf0[len++] =  byte;
      break;
   }
   return len;
}

typedef enum {WAIT_SOF,ESC_SEQ,WAIT_EOF} STATE_RX;
//---------------------------------------------------------------------------
//разборщик очищенного принятного пакета
void dispel_rx_buf0(uint8_t* buf0,int len)
{
    for(int i=0;i<len;i++)
        putc(buf0[i]);
}
//---------------------------------------------------------------------------

//очитска принятого байта от байтстафинга
void dispel_rx_byte(uint8_t byte,uint8_t *buf)
{
//Ответ на запрос статуса
static STATE_RX state_rx = WAIT_SOF;    
    int len = 0;
	switch(state_rx)
	{
		case WAIT_SOF:
			if(byte==SOP) 
                state_rx=WAIT_EOF;
			len=0;
		break;
		case WAIT_EOF:
			switch(byte)
			{
				case ESC:
					state_rx=ESC_SEQ;
				break;
				case EOP:
					dispel_rx_buf(buf0,len);//разборка пакета
					state_rx=WAIT_SOF;
				break;
				default:
					buf0[len++] = byte;
				break;
			}
		break;
		case ESC_SEQ:
			switch(byte)
			{
				case SOP^XOR:
					buf0[len++] = SOP;
					state_rx=WAIT_EOF;
				break;
				case ESC^XOR:
					len++;
					buf0[len] = ESC;
					state_rx=WAIT_EOF;
				break;
			}
		break;
	}
}
