--EuSDL2 Flags

include std/machine.e
include std/math.e

public constant SDL_INIT_TIMER = 1,
				SDL_INIT_AUDIO = 16,
				SDL_INIT_VIDEO = 32,
				SDL_INIT_JOYSTICK = 512,
				SDL_INIT_HAPTIC = 4096,
				SDL_INIT_GAMECONTROLLER = 8192,
				SDL_INIT_EVENTS = 16384,
				SDL_INIT_SENSOR = 32768,
				SDL_INIT_NOPARACHUTE = 1048576,
				SDL_INIT_EVERYTHING = or_all({SDL_INIT_TIMER,SDL_INIT_AUDIO,SDL_INIT_VIDEO,SDL_INIT_EVENTS,SDL_INIT_JOYSTICK,SDL_INIT_HAPTIC,SDL_INIT_GAMECONTROLLER})
				
public enum type SDL_ASSERT_STATE

	SDL_ASSERTION_RETRY = 0,
	SDL_ASSERTION_BREAK,
	SDL_ASSERTION_ABORT,
	SDL_ASSERTION_IGNORE,
	SDL_ASSERTION_ALWAYS_IGNORE
	
end type

public constant SDL_AUDIO_MASK_BITSIZE = 255,
				SDL_AUDIO_MASK_DATATYPE = 256,
				SDL_AUDIO_MASK_ENDIAN = 4096,
				SDL_AUDIO_MASK_SIGNED = 32768,
				SDL_AUDIO_BITSIZE = SDL_AUDIO_MASK_BITSIZE,
				SDL_AUDIO_ISFLOAT = SDL_AUDIO_MASK_DATATYPE,
				SDL_AUDIO_ISBIGENDIAN = SDL_AUDIO_MASK_ENDIAN,
				SDL_AUDIO_ISSIGNED = SDL_AUDIO_MASK_SIGNED,
				SDL_AUDIO_ISINT = -SDL_AUDIO_ISFLOAT,
				SDL_AUDIO_ISLITTLEENDIAN = -SDL_AUDIO_ISBIGENDIAN,
				SDL_AUDIO_ISUNSIGNED = -SDL_AUDIO_ISSIGNED
				
public constant AUDIO_U8 = 8,
				AUDIO_S8 = 32776,
				AUDIO_U16LSB = 16,
				AUDIO_S16LSB = 32784,
				AUDIO_U16MSB = 4112,
				AUDIO_S16MSB = 36880,
				AUDIO_U16 = AUDIO_U16LSB,
				AUDIO_S16 = AUDIO_S16LSB
				
public constant AUDIO_S32LSB = 32800,
				AUDIO_S32MSB = 36896,
				AUDIO_S32 = AUDIO_S32LSB
				
public constant AUDIO_F32LSB = 33056,
				AUDIO_F32MSB = 37152,
				AUDIO_F32 = AUDIO_F32LSB
				
public constant AUDIO_U16SYS = AUDIO_U16LSB,
				AUDIO_S16SYS = AUDIO_S16LSB,
				AUDIO_S32SYS = AUDIO_S32LSB,
				AUDIO_F32SYS = AUDIO_F32LSB
				
public constant SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = 1,
				SDL_AUDIO_ALLOW_FORMAT_CHANGE = 2,
				SDL_AUDIO_ALLOW_CHANNELS_CHANGE = 4,
				SDL_AUDIO_ALLOW_ANY_CHANGE = or_all({SDL_AUDIO_ALLOW_FREQUENCY_CHANGE,SDL_AUDIO_ALLOW_FORMAT_CHANGE,SDL_AUDIO_ALLOW_CHANNELS_CHANGE})
				
public enum type SDL_AUDIOSTATUS

	SDL_AUDIO_STOPPED = 0,
	SDL_AUDIO_PLAYING,
	SDL_AUDIO_PAUSED
	
end type

public constant SDL_MIX_MAXVOLUME = 128

public constant SDL_JOYSTICK_AXIS_MAX = 32767
public constant SDL_JOYSTICK_AXIS_MIN = -32768

public enum type SDL_BLENDMODE

	SDL_BLENDMODE_NONE = 0,
	SDL_BLENDMODE_BLEND = 1,
	SDL_BLENDMODE_ADD = 2,
	SDL_BLENDMODE_MOD = 4
	
end type

public enum type SDL_BLENDOPERATION

	SDL_BLENDOPERATION_ADD = 1,
	SDL_BLENDOPERATION_SUBTRACT = 2,
	SDL_BLENDOPERATION_REV_SUBTRACT = 3,
	SDL_BLENDOPERATION_MINIMUM = 4,
	SDL_BLENDOPERATION_MAXIMUM = 5
	
end type

public enum type SDL_BLENDFACTOR

	SDL_BLENDFACTOR_ZERO = 1,
	SDL_BLENDFACTOR_ONE = 2,
	SDL_BLENDFACTOR_SRC_COLOR = 3,
	SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4,
	SDL_BLENDFACTOR_SRC_ALPHA = 5,
	SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6,
	SDL_BLENDFACTOR_DST_COLOR = 7,
	SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8,
	SDL_BLENDFACTOR_DST_ALPHA = 9,
	SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10
	
end type

public constant SDL_CACHELINE_SIZE = 128

public constant SDL_LIL_ENDIAN = 1234
public constant SDL_BIG_ENDIAN = 4321

public enum type SDL_ERRORCODE

	SDL_ENOMEM = 0,
	SDL_EFREAD,
	SDL_EFWRITE,
	SDL_EFSEEK,
	SDL_UNSUPPORTED,
	SDL_LASTERROR
	
end type

public constant SDL_RELEASED = 0,
				SDL_PRESSED = 1
				
public enum type SDL_EVENTTYPE

	SDL_FIRSTEVENT = 0,
	SDL_QUIT = 256,
	
	SDL_APP_TERMINATING,
	SDL_APP_LOWMEMORY,
	SDL_APP_WILLENTERBACKGROUND,
	SDL_APP_DIDENTERBACKGROUND,
	SDL_APP_WILLENTERFOREGROUND,
	SDL_APP_DIDENTERFOREGROUND,
	
	SDL_DISPLAYEVENT = 336,
	
	SDL_WINDOWEVENT = 512,
	SDL_SYSWMEVENT,
	
	SDL_KEYDOWN = 768,
	SDL_KEYUP,
	SDL_TEXTEDITING,
	SDL_TEXTINPUT,
	
	SDL_MOUSEMOTION = 1024,
	SDL_MOUSEBUTTONDOWN,
	SDL_MOUSEBUTTONUP,
	SDL_MOUSEWHEEL,
	
	SDL_JOYAXISMOTION = 1536,
	SDL_JOYBALLMOTION,
	SDL_JOYHATMOTION,
	SDL_JOYBUTTONDOWN,
	SDL_JOYBUTTONUP,
	SDL_JOYDEVICEADDED,
	SDL_JOYDEVICEREMOVED,
	
	SDL_CONTROLLERAXISMOTION = 1616,
	SDL_CONTROLLERBUTTONDOWN,
	SDL_CONTROLLERBUTTONUP,
	SDL_CONTROLLERDEVICEADDED,
	SDL_CONTROLLERDEVICEREMOVED,
	SDL_CONTROLLERDEVICEREMAPPED,
	
	SDL_FINGERDOWN = 1792,
	SDL_FINGERUP,
	SDL_FINGERMOTION,
	
	SDL_DOLLARGESTURE = 2048,
	SDL_DOLLARRECORD,
	SDL_MULTIGESTURE,
	
	SDL_CLIPBOARDUPDATE = 2304,
	
	SDL_DROPFILE = 4096,
	
	SDL_RENDER_TARGETS_RESET = 8192,
	
	SDL_USEREVENT = 32768,
	
	SDL_LASTEVENT = 65535,
	
	SDL_SENSOREVENT = 4608
	
end type

public enum type SDL_EVENTACTION

	SDL_ADDEVENT = 0,
	SDL_PEEKEVENT,
	SDL_GETEVENT
	
end type

public constant SDL_QUERY = -1,
				SDL_IGNORE = 0,
				SDL_DISABLE = 0,
				SDL_ENABLE = 1
				
public enum type SDL_GAMECONTROLLERBINDTYPE

	SDL_CONTROLLER_BINDTYPE_NONE = 0,
	SDL_CONTROLLER_BINDTYPE_BUTTON,
	SDL_CONTROLLER_BINDTYPE_AXIS,
	SDL_CONTROLLER_BINDTYPE_HAT
	
end type

public enum type SDL_GAMECONTROLLERAXIS

	SDL_CONTROLLER_AXIS_INVALID = -1,
	SDL_CONTROLLER_AXIS_LEFTX,
	SDL_CONTROLLER_AXIS_LEFTY,
	SDL_CONTROLLER_AXIS_RIGHTX,
	SDL_CONTROLLER_AXIS_RIGHTY,
	SDL_CONTROLLER_AXIS_TRIGGERLEFT,
	SDL_CONTROLLER_AXIS_TRIGGERRIGHT,
	SDL_CONTROLLER_AXIS_MAX
	
end type

public enum type SDL_GAMECONTROLLERBUTTON

	SDL_CONTROLLER_BUTTON_INVALID = -1,
	SDL_CONTROLLER_BUTTON_A,
	SDL_CONTROLLER_BUTTON_B,
	SDL_CONTROLLER_BUTTON_X,
	SDL_CONTROLLER_BUTTON_Y,
	SDL_CONTROLLER_BUTTON_BACK,
	SDL_CONTROLLER_BUTTON_GUIDE,
	SDL_CONTROLLER_BUTTON_START,
	SDL_CONTROLLER_BUTTON_LEFTSTICK,
	SDL_CONTROLLER_BUTTON_RIGHTSTICK,
	SDL_CONTROLLER_BUTTON_LEFTSHOULDER,
	SDL_CONTROLLER_BUTTON_RIGHTSHOULDER,
	SDL_CONTROLLER_BUTTON_DPAD_UP,
	SDL_CONTROLLER_BUTTON_DPAD_DOWN,
	SDL_CONTROLLER_BUTTON_DPAD_LEFT,
	SDL_CONTROLLER_BUTTON_DPAD_RIGHT,
	SDL_CONTROLLER_BUTTON_MAX
	
end type

public constant SDL_HAPTIC_CONSTANT = 0

public constant SDL_HAPTIC_SINE = 2

public constant SDL_HAPTIC_LEFTRIGHT = 4

public constant SDL_HAPTIC_TRIANGLE = 8

public constant SDL_HAPTIC_SAWTOOTHUP = 16

public constant SDL_HAPTIC_SAWTOOTHDOWN = 32

public constant SDL_HAPTIC_RAMP = 64

public constant SDL_HAPTIC_SPRING = 128

public constant SDL_HAPTIC_DAMPER = 256

public constant SDL_HAPTIC_INERTIA = 512

public constant SDL_HAPTIC_FRICTION = 1024

public constant SDL_HAPTIC_CUSTOM = 2048

public constant SDL_HAPTIC_GAIN = 4096

public constant SDL_HAPTIC_AUTOCENTER = 8192

public constant SDL_HAPTIC_STATUS = 16384

public constant SDL_HAPTIC_PAUSE = 32768

public constant SDL_HAPTIC_POLAR = 0,
				SDL_HAPTIC_CARTESIAN = 1,
				SDL_HAPTIC_SPHERICAL = 2
				
public constant SDL_HAPTIC_INFINITY = 285960729237

public enum type SDL_HINTPRIORITY

	SDL_HINT_DEFAULT = 0,
	SDL_HINT_NORMAL,
	SDL_HINT_OVERRIDE
	
end type

public constant SDL_HAT_CENTERED = 0,
				SDL_HAT_UP = 1,
				SDL_HAT_RIGHT = 2,
				SDL_HAT_DOWN = 4,
				SDL_HAT_LEFT = 8,
				SDL_HAT_RIGHTUP = or_all({SDL_HAT_RIGHT,SDL_HAT_UP}),
				SDL_HAT_RIGHTDOWN = or_all({SDL_HAT_RIGHT,SDL_HAT_DOWN}),
				SDL_HAT_LEFTUP = or_all({SDL_HAT_LEFT,SDL_HAT_UP}),
				SDL_HAT_LEFTDOWN = or_all({SDL_HAT_LEFT,SDL_HAT_DOWN})
				
public constant SDLK_SCANCODE_MASK = 1073741824,
				SDL_SCANCODE_TO_KEYCODE = SDLK_SCANCODE_MASK
				
public enum type SDL_SCANCODE

	SDL_SCANCODE_UNKNOWN = 0,
	SDL_SCANCODE_A = 4,
	SDL_SCANCODE_B = 5,
	SDL_SCANCODE_C = 6,
	SDL_SCANCODE_D = 7,
	SDL_SCANCODE_E = 8,
	SDL_SCANCODE_F = 9,
	SDL_SCANCODE_G = 10,
	SDL_SCANCODE_H = 11,
	SDL_SCANCODE_I = 12,
	SDL_SCANCODE_J = 13,
	SDL_SCANCODE_K = 14,
	SDL_SCANCODE_L = 15,
	SDL_SCANCODE_M = 16,
	SDL_SCANCODE_N = 17,
	SDL_SCANCODE_O = 18,
	SDL_SCANCODE_P = 19,
	SDL_SCANCODE_Q = 20,
	SDL_SCANCODE_R = 21,
	SDL_SCANCODE_S = 22,
	SDL_SCANCODE_T = 23,
	SDL_SCANCODE_U = 24,
	SDL_SCANCODE_V = 25,
	SDL_SCANCODE_W = 26,
	SDL_SCANCODE_X = 27,
	SDL_SCANCODE_Y = 28,
	SDL_SCANCODE_Z = 29,
	
	SDL_SCANCODE_1 = 30,
	SDL_SCANCODE_2 = 31,
	SDL_SCANCODE_3 = 32,
	SDL_SCANCODE_4 = 33,
	SDL_SCANCODE_5 = 34,
	SDL_SCANCODE_6 = 35,
	SDL_SCANCODE_7 = 36,
	SDL_SCANCODE_8 = 37,
	SDL_SCANCODE_9 = 38,
	SDL_SCANCODE_0 = 39,
	
	SDL_SCANCODE_RETURN = 40,
	SDL_SCANCODE_ESCAPE = 41,
	SDL_SCANCODE_BACKSPACE = 42,
	SDL_SCANCODE_TAB = 43,
	SDL_SCANCODE_SPACE = 44,
	
	SDL_SCANCODE_MINUS = 45,
	SDL_SCANCODE_EQUALS = 46,
	SDL_SCANCODE_LEFTBRACKET = 47,
	SDL_SCANCODE_RIGHTBRACKET = 48,
	SDL_SCANCODE_BACKSLASH = 49,
	
	SDL_SCANCODE_NONUSHASH = 50,
	
	SDL_SCANCODE_SEMICOLON = 51,
	SDL_SCANCODE_APOSTROPHE = 52,
	SDL_SCANCODE_GRAVE = 53,
	
	SDL_SCANCODE_COMMA = 54,
	SDL_SCANCODE_PERIOD = 55,
	SDL_SCANCODE_SLASH = 56,
	
	SDL_SCANCODE_CAPSLOCK = 57,
	
	SDL_SCANCODE_F1 = 58,
	SDL_SCANCODE_F2 = 59,
	SDL_SCANCODE_F3 = 60,
	SDL_SCANCODE_F4 = 61,
	SDL_SCANCODE_F5 = 62,
	SDL_SCANCODE_F6 = 63,
	SDL_SCANCODE_F7 = 64,
	SDL_SCANCODE_F8 = 65,
	SDL_SCANCODE_F9 = 66,
	SDL_SCANCODE_F10 = 67,
	SDL_SCANCODE_F11 = 68,
	SDL_SCANCODE_F12 = 69,
	
	SDL_SCANCODE_PRINTSCREEN = 70,
	SDL_SCANCODE_SCROLLLOCK = 71,
	SDL_SCANCODE_PAUSE = 72,
	SDL_SCANCODE_INSERT = 73,
	
	SDL_SCANCODE_HOME = 74,
	SDL_SCANCODE_PAGEUP = 75,
	SDL_SCANCODE_DELETE = 76,
	SDL_SCANCODE_END = 77,
	SDL_SCANCODE_PAGEDOWN = 78,
	SDL_SCANCODE_RIGHT = 79,
	SDL_SCANCODE_LEFT = 80,
	SDL_SCANCODE_DOWN = 81,
	SDL_SCANCODE_UP = 82,
	
	SDL_SCANCODE_NUMLOCKCLEAR = 83,
		
	SDL_SCANCODE_KP_DIVIDE = 84,
	SDL_SCANCODE_KP_MULTIPLY = 85,
	SDL_SCANCODE_KP_MINUS = 86,
	SDL_SCANCODE_KP_PLUS = 87,
	SDL_SCANCODE_KP_ENTER = 88,
	SDL_SCANCODE_KP_1 = 89,
	SDL_SCANCODE_KP_2 = 90,
	SDL_SCANCODE_KP_3 = 91,
	SDL_SCANCODE_KP_4 = 92,
	SDL_SCANCODE_KP_5 = 93,
	SDL_SCANCODE_KP_6 = 94,
	SDL_SCANCODE_KP_7 = 95,
	SDL_SCANCODE_KP_8 = 96,
	SDL_SCANCODE_KP_9 = 97,
	SDL_SCANCODE_KP_0 = 98,
	SDL_SCANCODE_KP_PERIOD = 99,
	
	SDL_SCANCODE_NONUSBACKSLASH = 100,
	
	SDL_SCANCODE_APPLICATION = 101,
	SDL_SCANCODE_POWER = 102,
	
	SDL_SCANCODE_KP_EQUALS = 103,
	SDL_SCANCODE_F13 = 104,
	SDL_SCANCODE_F14 = 105,
	SDL_SCANCODE_F15 = 106,
	SDL_SCANCODE_F16 = 107,
	SDL_SCANCODE_F17 = 108,
	SDL_SCANCODE_F18 = 109,
	SDL_SCANCODE_F19 = 110,
	SDL_SCANCODE_F20 = 111,
	SDL_SCANCODE_F21 = 112,
	SDL_SCANCODE_F22 = 113,
	SDL_SCANCODE_F23 = 114,
	SDL_SCANCODE_F24 = 115,
	SDL_SCANCODE_EXECUTE = 116,
	SDL_SCANCODE_HELP = 117,
	SDL_SCANCODE_MENU = 118,
	SDL_SCANCODE_SELECT = 119,
	SDL_SCANCODE_STOP = 120,
	SDL_SCANCODE_AGAIN = 121,
	SDL_SCANCODE_UNDO = 122,
	SDL_SCANCODE_CUT = 123,
	SDL_SCANCODE_COPY = 124,
	SDL_SCANCODE_PASTE = 125,
	SDL_SCANCODE_FIND = 126,
	SDL_SCANCODE_MUTE = 127,
	SDL_SCANCODE_VOLUMEUP = 128,
	SDL_SCANCODE_VOLUMEDOWN = 129,
	SDL_SCANCODE_LOCKINGCAPSLOCK = 130,
	SDL_SCANCODE_LOCKINGNUMLOCK = 131,
	SDL_SCANCODE_LOCKINGSCROLLLOCK = 132,
	
	SDL_SCANCODE_KP_COMMA = 133,
	SDL_SCANCODE_KP_EQUALS400 = 134,
	
	SDL_SCANCODE_INTERNATIONAL = 135,
	
	SDL_SCANCODE_INTERNATIONAL2 = 136,
	SDL_SCANCODE_INTERNATIONAL3 = 137,
	SDL_SCANCODE_INTERNATIONAL4 = 138,
	SDL_SCANCODE_INTERNATIONAL5 = 139,
	SDL_SCANCODE_INTERNATIONAL6 = 140,
	SDL_SCANCODE_INTERNATIONAL7 = 141,
	SDL_SCANCODE_INTERNATIONAL8 = 142,
	SDL_SCANCODE_INTERNATIONAL9 = 143,
	SDL_SCANCODE_LANG1 = 144,
	SDL_SCANCODE_LANG2 = 145,
	SDL_SCANCODE_LANG3 = 146,
	SDL_SCANCODE_LANG4 = 147,
	SDL_SCANCODE_LANG5 = 148,
	SDL_SCANCODE_LANG6 = 149,
	SDL_SCANCODE_LANG7 = 150,
	SDL_SCANCODE_LANG8 = 151,
	SDL_SCANCODE_LANG9 = 152,
	
	SDL_SCANCODE_ALTERASE = 153,
	SDL_SCANCODE_SYSREQ = 154,
	SDL_SCANCODE_CANCEL = 155,
	SDL_SCANCODE_CLEAR = 156,
	SDL_SCANCODE_PRIOR = 157,
	SDL_SCANCODE_RETURN2 = 158,
	SDL_SCANCODE_SEPARATOR = 159,
	SDL_SCANCODE_OUT = 160,
	SDL_SCANCODE_OPER = 161,
	SDL_SCANCODE_CLEARAGAIN = 162,
	SDL_SCANCODE_CRSEL = 163,
	SDL_SCANCODE_EXSEL = 164,
	
	SDL_SCANCODE_KP_00 = 176,
	SDL_SCANCODE_KP_000 = 177,
	SDL_SCANCODE_THOUNSANDSSEPARATOR = 178,
	SDL_SCANCODE_DECIMALSEPARATOR = 179,
	SDL_SCANCODE_CURRENCYUINT = 180,
	SDL_SCANCODE_CURRENCYSUBUNIT = 181,
	SDL_SCANCODE_KP_LEFTPAREN = 182,
	SDL_SCANCODE_KP_RIGHTPAREN = 183,
	SDL_SCANCODE_KP_LEFTBRACE = 184,
	SDL_SCANCODE_KP_RIGHTBRACE = 185,
	SDL_SCANCODE_KP_TAB = 186,
	SDL_SCANCODE_KP_BACKSPACE = 187,
	SDL_SCANCODE_KP_A = 188,
	SDL_SCANCODE_KP_B = 189,
	SDL_SCANCODE_KP_C = 190,
	SDL_SCANCODE_KP_D = 191,
	SDL_SCANCODE_KP_E = 192,
	SDL_SCANCODE_KP_F = 193,
	SDL_SCANCODE_KP_XOR = 194,
	SDL_SCANCODE_KP_POWER = 195,
	SDL_SCANCODE_KP_PERCENT = 196,
	SDL_SCANCODE_KP_LESS = 197,
	SDL_SCANCODE_KP_GREATER = 198,
	SDL_SCANCODE_KP_AMPERSAND = 199,
	SDL_SCANCODE_KP_DBLAMPERSAND = 200,
	SDL_SCANCODE_KP_VERTICALBAR = 201,
	SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
	SDL_SCANCODE_KP_COLON = 203,
	SDL_SCANCODE_KP_HASH = 204,
	SDL_SCANCODE_KP_SPACE = 205,
	SDL_SCANCODE_KP_AT = 206,
	SDL_SCANCODE_KP_EXCLAM = 207,
	SDL_SCANCODE_KP_MEMSTORE = 208,
	SDL_SCANCODE_KP_MEMRECALL = 209,
	SDL_SCANCODE_KP_MEMCLEAR = 210,
	SDL_SCANCODE_KP_MEMADD = 211,
	SDL_SCANCODE_KP_MEMSUBTRACT = 212,
	SDL_SCANCODE_KP_MEMMULTIPLY = 213,
	SDL_SCANCODE_KP_MEMDIVIDE = 214,
	SDL_SCANCODE_KP_PLUSMINUS = 215,
	SDL_SCANCODE_KP_CLEAR = 216,
	SDL_SCANCODE_KP_CLEARENTRY = 217,
	SDL_SCANCODE_KP_BINARY = 218,
	SDL_SCANCODE_KP_OCTAL = 219,
	SDL_SCANCODE_KP_DECIMAL = 220,
	SDL_SCANCODE_KP_HEXADECIMAL = 221,
	
	SDL_SCANCODE_LCTRL = 224,
	SDL_SCANCODE_LSHIFT = 225,
	SDL_SCANCODE_LALT = 226,
	SDL_SCANCODE_LGUI = 227,
	SDL_SCANCODE_RCTRL = 228,
	SDL_SCANCODE_RSHIFT = 229,
	SDL_SCANCODE_RALT = 230,
	SDL_SCANCODE_RGUI = 231,
	
	SDL_SCANCODE_MODE = 257,
	
	SDL_SCANCODE_AUDIONEXT = 258,
	SDL_SCANCODE_AUDIOPREV = 259,
	SDL_SCANCODE_AUDIOSTOP = 260,
	SDL_SCANCODE_AUDIOPLAY = 261,
	SDL_SCANCODE_AUDIOMUTE = 262,
	SDL_SCANCODE_MEDIASELECT = 263,
	SDL_SCANCODE_WWW = 264,
	SDL_SCANCODE_MAIL = 265,
	SDL_SCANCODE_CALCULATOR = 266,
	SDL_SCANCODE_COMPUTER = 267,
	SDL_SCANCODE_AC_SEARCH = 268,
	SDL_SCANCODE_AC_HOME = 269,
	SDL_SCANCODE_AC_BACK = 270,
	SDL_SCANCODE_AC_FORWARD = 271,
	SDL_SCANCODE_AC_STOP = 272,
	SDL_SCANCODE_AC_REFRESH = 273,
	SDL_SCANCODE_AC_BOOKMARKS = 274,
	
	SDL_SCANCODE_BRIGHTNESSDOWN = 275,
	SDL_SCANCODE_BRIGHTNESSUP = 276,
	SDL_SCANCODE_DISPLAYSWITCH = 277,
	
	SDL_SCANCODE_KBDILLUMTOGGLE = 278,
	SDL_SCANCODE_KBDILLUMDOWN = 279,
	SDL_SCANCODE_KBDILLUMUP = 280,
	SDL_SCANCODE_EJECT = 281,
	SDL_SCANCODE_SLEEP = 282,
	
	SDL_SCANCODE_APP1 = 283,
	SDL_SCANCODE_APP2 = 284,
	
	SDL_NUM_SCANCODES = 512
	
end type

public enum SDLK_UNKNOWN = 0,
			SDLK_RETURN,
			SDLK_ESCAPE,
			SDLK_BACKSPACE,
			SDLK_TAB,
			SDLK_SPACE,
			SDLK_EXCLAIM,
			SDLK_QUOTEDBL,
			SDLK_HASH,
			SDLK_PERCENT,
			SDLK_DOLLAR,
			SDLK_AMPERSAND,
			SDLK_QUOTE,
			SDLK_LEFTPAREN,
			SDLK_RIGHTPAREN,
			SDLK_ASTERISK,
			SDLK_PLUS,
			SDLK_COMMA,
			SDLK_MINUS,
			SDLK_PERIOD,
			SDLK_SLASH,
			SDLK_0,
			SDLK_1,
			SDLK_2,
			SDLK_3,
			SDLK_4,
			SDLK_5,
			SDLK_6,
			SDLK_7,
			SDLK_8,
			SDLK_9,
			SDLK_COLON,
			SDLK_SEMICOLON,
			SDLK_LESS,
			SDLK_EQUALS,
			SDLK_GREATER,
			SDLK_QUESTION,
			SDLK_AT,
			SDLK_LEFTBRACKET,
			SDLK_BACKSLASH,
			SDLK_RIGHTBRACKET,
			SDLK_CARET,
			SDLK_UNDERSCORE,
			SDLK_BACKQUOTE,
			SDLK_a,
			SDLK_b,
			SDLK_c,
			SDLK_d,
			SDLK_e,
			SDLK_f,
			SDLK_g,
			SDLK_h,
			SDLK_i,
			SDLK_j,
			SDLK_k,
			SDLK_l,
			SDLK_m,
			SDLK_n,
			SDLK_o,
			SDLK_p,
			SDLK_q,
			SDLK_r,
			SDLK_s,
			SDLK_t,
			SDLK_u,
			SDLK_v,
			SDLK_w,
			SDLK_x,
			SDLK_y,
			SDLK_z,
			
			SDLK_CAPSLOCK = SDL_SCANCODE_CAPSLOCK,
			
			SDLK_F1 = SDL_SCANCODE_F1,
			SDLK_F2 = SDL_SCANCODE_F2,
			SDLK_F3 = SDL_SCANCODE_F3,
			SDLK_F4 = SDL_SCANCODE_F4,
			SDLK_F5 = SDL_SCANCODE_F5,
			SDLK_F6 = SDL_SCANCODE_F6,
			SDLK_F7 = SDL_SCANCODE_F7,
			SDLK_F8 = SDL_SCANCODE_F8,
			SDLK_F9 = SDL_SCANCODE_F9,
			SDLK_F10 = SDL_SCANCODE_F10,
			SDLK_F11 = SDL_SCANCODE_F11,
			SDLK_F12 = SDL_SCANCODE_F12,
			
			SDLK_PRINTSCREEN = SDL_SCANCODE_PRINTSCREEN,
			SDLK_SCROLLLOCK = SDL_SCANCODE_SCROLLLOCK,
			SDLK_PAUSE = SDL_SCANCODE_PAUSE,
			SDLK_INSERT = SDL_SCANCODE_INSERT,
			SDLK_HOME = SDL_SCANCODE_HOME,
			SDLK_PAGEUP = SDL_SCANCODE_PAGEUP,
			SDLK_DELETE = SDL_SCANCODE_DELETE,
			SDLK_END = SDL_SCANCODE_END,
			SDLK_PAGEDOWN = SDL_SCANCODE_PAGEDOWN,
			SDLK_RIGHT = SDL_SCANCODE_RIGHT,
			SDLK_LEFT = SDL_SCANCODE_LEFT,
			SDLK_DOWN = SDL_SCANCODE_DOWN,
			SDLK_UP = SDL_SCANCODE_UP,
			
			SDLK_NUMLOCKCLEAR = SDL_SCANCODE_NUMLOCKCLEAR,
			SDLK_KP_DIVIDE = SDL_SCANCODE_KP_DIVIDE,
			SDLK_KP_MULTIPLY = SDL_SCANCODE_KP_MULTIPLY,
			SDLK_KP_MINUS = SDL_SCANCODE_KP_MINUS,
			SDLK_KP_PLUS = SDL_SCANCODE_KP_PLUS,
			SDLK_KP_ENTER = SDL_SCANCODE_KP_ENTER,
			SDLK_KP_1 = SDL_SCANCODE_KP_1,
			SDLK_KP_2 = SDL_SCANCODE_KP_2,
			SDLK_KP_3 = SDL_SCANCODE_KP_3,
			SDLK_KP_4 = SDL_SCANCODE_KP_4,
			SDLK_KP_5 = SDL_SCANCODE_KP_5,
			SDLK_KP_6 = SDL_SCANCODE_KP_6,
			SDLK_KP_7 = SDL_SCANCODE_KP_7,
			SDLK_KP_8 = SDL_SCANCODE_KP_8,
			SDLK_KP_9 = SDL_SCANCODE_KP_9,
			SDLK_KP_0 = SDL_SCANCODE_KP_0,
			SDLK_KP_PERIOD = SDL_SCANCODE_KP_PERIOD,
			
			SDLK_APPLICATION = SDL_SCANCODE_APPLICATION,
			SDLK_POWER = SDL_SCANCODE_POWER,
			SDLK_KP_EQUALS = SDL_SCANCODE_KP_EQUALS,
			SDLK_F13 = SDL_SCANCODE_F13,
			SDLK_F14 = SDL_SCANCODE_F14,
			SDLK_F15 = SDL_SCANCODE_F15,
			SDLK_F16 = SDL_SCANCODE_F16,
			SDLK_F17 = SDL_SCANCODE_F17,
			SDLK_F18 = SDL_SCANCODE_F18,
			SDLK_F19 = SDL_SCANCODE_F19,
			SDLK_F20 = SDL_SCANCODE_F20,
			SDLK_F21 = SDL_SCANCODE_F21,
			SDLK_F22 = SDL_SCANCODE_F22,
			SDLK_F23 = SDL_SCANCODE_F23,
			SDLK_F24 = SDL_SCANCODE_F24,
			SDLK_EXECUTE = SDL_SCANCODE_EXECUTE,
			SDLK_HELP = SDL_SCANCODE_HELP,
			SDLK_MENU = SDL_SCANCODE_MENU,
			SDLK_SELECT = SDL_SCANCODE_SELECT,
			SDLK_STOP = SDL_SCANCODE_STOP,
			SDLK_AGAIN = SDL_SCANCODE_AGAIN,
			SDLK_UNDO = SDL_SCANCODE_UNDO,
			SDLK_CUT = SDL_SCANCODE_CUT,
			SDLK_COPY = SDL_SCANCODE_COPY,
			SDLK_PASTE = SDL_SCANCODE_PASTE,
			SDLK_FIND = SDL_SCANCODE_FIND,
			SDLK_MUTE = SDL_SCANCODE_MUTE,
			SDLK_VOLUMEUP = SDL_SCANCODE_VOLUMEUP,
			SDLK_VOLUMEDOWN = SDL_SCANCODE_VOLUMEDOWN,
			SDLK_KP_COMMA = SDL_SCANCODE_KP_COMMA,
			SDLK_KP_EQUALS400 = SDL_SCANCODE_KP_EQUALS400,
			
			SDLK_ALTERASE = SDL_SCANCODE_ALTERASE,
			SDLK_SYSREQ = SDL_SCANCODE_SYSREQ,
			SDLK_CANCEL = SDL_SCANCODE_CANCEL,
			SDLK_CLEAR = SDL_SCANCODE_CLEAR,
			SDLK_PRIOR = SDL_SCANCODE_PRIOR,
			SDLK_RETURN2 = SDL_SCANCODE_RETURN2,
			SDLK_SEPARATOR = SDL_SCANCODE_SEPARATOR,
			SDLK_OUT = SDL_SCANCODE_OUT,
			SDLK_OPER = SDL_SCANCODE_OPER,
			SDLK_CLEARAGAIN = SDL_SCANCODE_CLEARAGAIN,
			SDLK_CRSEL = SDL_SCANCODE_CRSEL,
			SDLK_EXSEL = SDL_SCANCODE_EXSEL,
			
			SDLK_KP_00 = SDL_SCANCODE_KP_00,
			SDLK_KP_000 = SDL_SCANCODE_KP_000,
			SDLK_THOUSANDSSEPARATOR = SDL_SCANCODE_THOUNSANDSSEPARATOR,
			SDLK_DECIMALSEPARATOR = SDL_SCANCODE_DECIMALSEPARATOR,
			SDLK_CURRENCYUINT = SDL_SCANCODE_CURRENCYUINT,
			SDLK_CURRENCYSUBUNIT = SDL_SCANCODE_CURRENCYSUBUNIT,
			SDLK_KP_LEFTPAREN = SDL_SCANCODE_KP_LEFTPAREN,
			SDLK_KP_LEFTBRACE = SDL_SCANCODE_KP_LEFTBRACE,
			SDLK_KP_RIGHTPAREN = SDL_SCANCODE_KP_RIGHTPAREN,
			SDLK_KP_RIGHTBRACE = SDL_SCANCODE_KP_RIGHTBRACE,
			SDLK_KP_TAB = SDL_SCANCODE_KP_TAB,
			SDLK_KP_BACKSPACE = SDL_SCANCODE_KP_BACKSPACE,
			SDLK_KP_A = SDL_SCANCODE_KP_A,
			SDLK_KP_B = SDL_SCANCODE_KP_B,
			SDLK_KP_C = SDL_SCANCODE_KP_C,
			SDLK_KP_D = SDL_SCANCODE_KP_D,
			SDLK_KP_E = SDL_SCANCODE_KP_E,
			SDLK_KP_F = SDL_SCANCODE_KP_F,
			SDLK_KP_XOR = SDL_SCANCODE_KP_XOR,
			SDLK_KP_POWER = SDL_SCANCODE_KP_POWER,
			SDLK_KP_PERCENT = SDL_SCANCODE_KP_PERCENT,
			SDLK_KP_LESS = SDL_SCANCODE_KP_LESS,
			SDLK_KP_GREATER = SDL_SCANCODE_KP_GREATER,
			SDLK_KP_AMPERSAND = SDL_SCANCODE_KP_AMPERSAND,
			SDLK_KP_DBLAMPERSAND = SDL_SCANCODE_KP_DBLAMPERSAND,
			SDLK_KP_VERTICALBAR = SDL_SCANCODE_KP_VERTICALBAR,
			SDLK_KP_DBLVERTICALBAR = SDL_SCANCODE_KP_DBLVERTICALBAR,
			SDLK_KP_COLON = SDL_SCANCODE_KP_COLON,
			SDLK_KP_HASH = SDL_SCANCODE_KP_HASH,
			SDLK_KP_SPACE = SDL_SCANCODE_KP_SPACE,
			SDLK_KP_AT = SDL_SCANCODE_KP_AT,
			SDLK_KP_EXCLAM = SDL_SCANCODE_KP_EXCLAM,
			SDLK_KP_MEMSTORE = SDL_SCANCODE_KP_MEMSTORE,
			SDLK_KP_MEMRECALL = SDL_SCANCODE_KP_MEMRECALL,
			SDLK_KP_MEMCLEAR = SDL_SCANCODE_KP_MEMCLEAR,
			SDLK_KP_MEMADD = SDL_SCANCODE_KP_MEMADD,
			SDLK_KP_MEMSUBTRACT = SDL_SCANCODE_KP_MEMSUBTRACT,
			SDLK_KP_MEMMULTIPLY = SDL_SCANCODE_KP_MEMMULTIPLY,
			SDLK_KP_MEMDIVIDE = SDL_SCANCODE_KP_DIVIDE,
			SDLK_KP_PLUSMINUS = SDL_SCANCODE_KP_PLUSMINUS,
			SDLK_KP_CLEAR = SDL_SCANCODE_KP_CLEAR,
			SDLK_KP_CLEARENTRY = SDL_SCANCODE_KP_CLEARENTRY,
			SDLK_KP_BINARY = SDL_SCANCODE_KP_BINARY,
			SDLK_KP_OCTAL = SDL_SCANCODE_KP_OCTAL,
			SDLK_KP_DECIMAL = SDL_SCANCODE_KP_DECIMAL,
			SDLK_KP_HEXADECIMAL = SDL_SCANCODE_KP_HEXADECIMAL,
			
			SDLK_LCTRL = SDL_SCANCODE_LCTRL,
			SDLK_LSHIFT = SDL_SCANCODE_LSHIFT,
			SDLK_LALT = SDL_SCANCODE_LALT,
			SDLK_LGUI = SDL_SCANCODE_LGUI,
			SDLK_RCTRL = SDL_SCANCODE_RCTRL,
			SDLK_RSHIFT = SDL_SCANCODE_RSHIFT,
			SDLK_RALT = SDL_SCANCODE_RALT,
			SDLK_RGUI = SDL_SCANCODE_RGUI,
			
			SDLK_MODE = SDL_SCANCODE_MODE,
				
			SDLK_AUDIONEXT = SDL_SCANCODE_AUDIONEXT,
			SDLK_AUDIOPREV = SDL_SCANCODE_AUDIOPREV,
			SDLK_AUDIOSTOP = SDL_SCANCODE_AUDIOSTOP,
			SDLK_AUDIOPLAY = SDL_SCANCODE_AUDIOPLAY,
			SDLK_AUDIOMUTE = SDL_SCANCODE_AUDIOMUTE,
			SDLK_MEDIASELECT = SDL_SCANCODE_MEDIASELECT,
			SDLK_WWW = SDL_SCANCODE_WWW,
			SDLK_MAIL = SDL_SCANCODE_MAIL,
			SDLK_CALCULATOR = SDL_SCANCODE_CALCULATOR,
			SDLK_COMPUTER = SDL_SCANCODE_COMPUTER,
			SDLK_AC_SEARCH = SDL_SCANCODE_AC_SEARCH,
			SDLK_AC_HOME = SDL_SCANCODE_AC_HOME,
			SDLK_AC_FORWARD = SDL_SCANCODE_AC_FORWARD,
			SDLK_AC_STOP = SDL_SCANCODE_AC_STOP,
			SDLK_AC_REFRESH = SDL_SCANCODE_AC_REFRESH,
			SDLK_AC_BOOKMARKS = SDL_SCANCODE_AC_BOOKMARKS,
			
			SDLK_BRIGHTNESSDOWN = SDL_SCANCODE_BRIGHTNESSDOWN,
			SDLK_BRIGHTNESSUP = SDL_SCANCODE_BRIGHTNESSUP,
			SDLK_DISPLAYSWITCH = SDL_SCANCODE_DISPLAYSWITCH,
			SDLK_KBDILLUMTOGGLE = SDL_SCANCODE_KBDILLUMTOGGLE,
			SDLK_KBDILLUMDOWN = SDL_SCANCODE_KBDILLUMDOWN,
			SDLK_KBDILLUMUP = SDL_SCANCODE_KBDILLUMUP,
			SDLK_EJECT = SDL_SCANCODE_EJECT,
			SDLK_SLEEP = SDL_SCANCODE_SLEEP
			
public enum type SDL_KEYMOD

	KMOD_NONE = 0,
	KMOD_LSHIFT = 1,
	KMOD_RSHIFT = 2,
	KMOD_LCTRL = 64,
	KMOD_RCTRL = 128,
	KMOD_LALT = 256,
	KMOD_RALT = 512,
	KMOD_LGUI = 1024,
	KMOD_RGUI = 2048,
	KMOD_NUMS = 4096,
	KMOD_CAPS = 8192,
	KMOD_MODE = 16384,
	KMOD_RESERVED = 32768
	
end type

public constant KMOD_CTRL = or_all({KMOD_LCTRL,KMOD_RCTRL}),
				KMOD_SHIFT = or_all({KMOD_LSHIFT,KMOD_RSHIFT}),
				KMOD_ALT = or_all({KMOD_LALT,KMOD_RALT}),
				KMOD_GUI = or_all({KMOD_LGUI,KMOD_RGUI})
				
public constant SDL_NONSHAPEABLE_WINDOW = -1,
				SDL_INVALID_SHAPE_ARGUMENT = -2,
				SDL_WINDOW_LACKS_SHAPE = -3
				
public enum type WINDOWSHAPEMODE

	ShapeModeDefault = 0,
	ShapeModeBinarizeAlpha,
	ShapeModeReverseBinarizeAlpha,
	ShapeModeColorKey
	
end type

public constant SDL_FALSE = 0,
				SDL_TRUE = 1
				
public constant DUMMY_ENUM_VALUE = 0

public constant SDL_SWSURFACE = 0,
				SDL_PREALLOC = 1,
				SDL_RLEACCEL = 2,
				SDL_DONTFREE = 4
				
public constant SDL_MUSTLOCK = SDL_RLEACCEL

public enum type SDL_WINRT_PATH

	SDL_WINRT_PATH_INSTALLED_LOCATION = 0,
	SDL_WINRT_PATH_LOCAL_FOLDER,
	SDL_WINRT_PATH_ROAMING_FOLDER,
	SDL_WINRT_PATH_TEMP_FOLDER
	
end type

public enum type SDL_SYSWM_TYPE

	SDL_SYSWM_UNKNOWN = 0,
	SDL_SYSWM_WINDOWS,
	SDL_SYSWM_X11,
	SDL_SYSWM_DIRECTFB,
	SDL_SYSWM_COCOA,
	SDL_SYSWM_UIKIT,
	SDL_SYSWM_WAYLAND,
	SDL_SYSWM_MIR,
	SDL_SYSWM_WINRT
	
end type

public constant SDLTEST_MAX_LOGMESSAGE_LENGTH = 3584

public constant ASSERT_FAIL = 0,
				ASSERT_PASS = 1
				
public constant DEFAULT_WINDOW_WIDTH = 640,
				DEFAULT_WINDOW_HEIGHT = 480
				
public constant VERBOSE_VIDEO = 1,
				VERBOSE_MODES = 2,
				VERBOSE_RENDER = 4,
				VERBOSE_EVENT = 8,
				VERBOSE_AUDIO = 16
				
public constant FONT_CHARACTER_SIZE = 8

public constant TEST_ENABLED = 1,
				TEST_DISABLED = 0
				
public constant TEST_ABORTED = -1,
				TEST_STARTED = 0,
				TEST_COMPLETED = 1,
				TEST_SKIPPED = 2
				
public constant TEST_RESULT_PASSED = 0,
				TEST_RESULT_FAILED = 1,
				TEST_RESULT_NO_ASSERT = 2,
				TEST_RESULT_SKIPPED = 3,
				TEST_RESULT_SETUP_FAILURE = 4
				
public enum type SDL_THREADPRIORITY

	SDL_THREAD_PRIORITY_LOW = 0,
	SDL_THREAD_PRIORITY_NORMAL,
	SDL_THREAD_PRIORITY_HIGH
	
end type

public constant SDL_TOUCH_MOUSEID = -1

public constant SDL_MAJOR_VERSION = 2,
				SDL_MINOR_VERSION = 0,
				SDL_PATCHLEVEL = 8
				
public constant	SDL_WINDOW_FULLSCREEN = 1,
				SDL_WINDOW_OPENGL = 2,
				SDL_WINDOW_SHOWN = 4,
				SDL_WINDOW_HIDDEN = 8,
				SDL_WINDOW_BORDERLESS = 16,
				SDL_WINDOW_RESIZABLE = 32,
				SDL_WINDOW_MINIMIZED = 64,
				SDL_WINDOW_MAXIMIZED = 128,
				SDL_WINDOW_INPUT_GRABBED = 256,
				SDL_WINDOW_INPUT_FOCUS = 512,
				SDL_WINDOW_MOUSE_FOCUS = 1024,
				SDL_WINDOW_FULLSCREEN_DESKTOP = or_all({SDL_WINDOW_FULLSCREEN,256}),
				SDL_WINDOW_FOREIGN = 2048,
				SDL_WINDOW_HIGHDPI = 8192,
				SDL_WINDOW_ALWAYS_ON_TOP = 32768

public constant SDL_WINDOWPOS_UNDEFINED_MASK = 536805376,
				SDL_WINDOWPOS_UNDEFINED_DISPLAY = SDL_WINDOWPOS_UNDEFINED_MASK,
				SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY,
				SDL_WINDOWPOS_ISUNDEFINED = SDL_WINDOWPOS_UNDEFINED_MASK
				
public constant SDL_WINDOWPOS_CENTERED_MASK = 805240832,
				SDL_WINDOWPOS_CENTERED_DISPLAY = SDL_WINDOWPOS_CENTERED_MASK,
				SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY,
				SDL_WINDOWPOS_ISCENTERED = SDL_WINDOWPOS_CENTERED_MASK
				
public enum type SDL_WINDOWEVENTID

	SDL_WINDOWEVENT_NONE = 0,
	SDL_WINDOWEVENT_SHOWN,
	SDL_WINDOWEVENT_HIDDEN,
	SDL_WINDOWEVENT_EXPOSED,
	
	SDL_WINDOWEVENT_MOVED,
	
	SDL_WINDOWEVENT_RESIZED,
	SDL_WINDOWEVENT_SIZE_CHANGED,
	SDL_WINDOWEVENT_MINIMIZED,
	SDL_WINDOWEVENT_MAXIMIZED,
	SDL_WINDOWEVENT_RESTORED,
	
	SDL_WINDOWEVENT_ENTER,
	SDL_WINDOWEVENT_LEAVE,
	SDL_WINDOWEVENT_FOCUS_GAINED,
	SDL_WINDOWEVENT_FOCUS_LOST,
	SDL_WINDOWEVENT_CLOSE
	
end type

public enum type SDL_GLATTR

	SDL_GL_RED_SIZE = 0,
	SDL_GL_GREEN_SIZE,
	SDL_GL_BLUE_SIZE,
	SDL_GL_ALPHA_SIZE,
	SDL_GL_BUFFER_SIZE,
	SDL_GL_DOUBLEBUFFER,
	SDL_GL_DEPTH_SIZE,
	SDL_GL_STENCIL_SIZE,
	SDL_GL_ACCUM_RED_SIZE,
	SDL_GL_ACCUM_GREEN_SIZE,
	SDL_GL_ACCUM_BLUE_SIZE,
	SDL_GL_ACCUM_ALPHA_SIZE,
	SDL_GL_STEREO,
	SDL_GL_MULTISAMPLEBUFFERS,
	SDL_GL_MULTISAMPLESAMPLES,
	SDL_GL_ACCELERED_VISUAL,
	SDL_GL_RETAINED_BACKING,
	SDL_GL_CONTEXT_MAJOR_VERSION,
	SDL_GL_CONTEXT_MINOR_VERSION,
	SDL_GL_CONTEXT_EGL,
	SDL_GL_CONTEXT_FLAGS,
	SDL_GL_CONTEXT_PROFILE_MASK,
	SDL_GL_SHARE_WITH_CURRENT_CONTEXT,
	SDL_GL_FRAMEBUFFER_SRGB_CAPABLE
	
end type

public enum type SDL_GLPROFILE

	SDL_GL_CONTEXT_PROFILE_CORE = 1,
	SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
	SDL_GL_CONTEXT_PROFILE_ES = 4
	
end type

public enum type SDL_GLCONTEXTFLAG

	SDL_GL_CONTEXT_DEBUG_FLAG = 1,
	SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
	SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
	SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8
	
end type

public constant SDL_RWOPS_UNKNOWN = 0,
				SDL_RWOPS_WINFILE = 1,
				SDL_RWOPS_STDFILE = 2,
				SDL_RWOPS_JNIFILE = 3,
				SDL_RWOPS_MEMORY = 4,
				SDL_RWOPS_MEMORY_RO = 5
				
public constant RW_SEEK_SET = 0,
				RW_SEEK_CUR = 1,
				RW_SEEK_END = 2
				
public enum type SDL_RENDERERFLAGS

	SDL_RENDERER_SOFTWARE = 1,
	SDL_RENDERER_ACCELERATED = 2,
	SDL_RENDERER_PRESENTVSYNC = 4,
	SDL_RENDERER_TARGETTEXTURE = 8
	
end type

public enum type SDL_TEXTUREACCESS

	SDL_TEXTUREACCESS_STATIC = 0,
	SDL_TEXTUREACCESS_STREAMING,
	SDL_TEXTUREACCESS_TARGET
	
end type

public enum type SDL_TEXTUREMODULATE

	SDL_TEXTUREMODULATE_NONE = 0,
	SDL_TEXTUREMODULATE_COLOR = 1,
	SDL_TEXTUREMODULATE_ALPHA = 2
	
end type

public enum type SDL_RENDERERFLIP

	SDL_FLIP_NONE = 0,
	SDL_FLIP_HORIZONTAL = 1,
	SDL_FLIP_VERTICAL = 2
	
end type

public enum SDL_PIXELTYPE_UNKNOWN = 0,
			SDL_PIXELTYPE_INDEX1,
			SDL_PIXELTYPE_INDEX4,
			SDL_PIXELTYPE_INDEX8,
			SDL_PIXELTYPE_PACKED8,
			SDL_PIXELTYPE_PACKED16,
			SDL_PIXELTYPE_PACKED32,
			SDL_PIXELTYPE_ARRAYU8,
			SDL_PIXELTYPE_ARRAYU16,
			SDL_PIXELTYPE_ARRAYU32,
			SDL_PIXELTYPE_ARRAYF16,
			SDL_PIXELTYPE_ARRAYF32
			
public enum SDL_BITMAPORDER_NONE = 0,
			SDL_BITMAPORDER_4321,
			SDL_BITMAPORDER_1234
			
public enum SDL_PACKEDORDER_NONE = 0,
			SDL_PACKEDORDER_XRGB,
			SDL_PACKEDORDER_RGBX,
			SDL_PACKEDORDER_ARGB,
			SDL_PACKEDORDER_RGBA,
			SDL_PACKEDORDER_XBGR,
			SDL_PACKEDORDER_BGRX,
			SDL_PACKEDORDER_ABGR,
			SDL_PACKEDORDER_BGRA
			
public enum SDL_ARRAYORDER_NONE = 0,
			SDL_ARRAYORDER_RGB,
			SDL_ARRAYORDER_RGBA,
			SDL_ARRAYORDER_ARGB,
			SDL_ARRAYORDER_BGR,
			SDL_ARRAYORDER_BGRA,
			SDL_ARRAYORDER_ABGR
			
public enum SDL_PACKEDLAYOUT_NONE = 0,
			SDL_PACKEDLAYOUT_332,
			SDL_PACKEDLAYOUT_4444,
			SDL_PACKEDLAYOUT_1555,
			SDL_PACKEDLAYOUT_5551,
			SDL_PACKEDLAYOUT_565,
			SDL_PACKEDLAYOUT_8888,
			SDL_PACKEDLAYOUT_2101010,
			SDL_PACKEDLAYOUT_1010102
			
public enum type SDL_POWERSTATE

	SDL_POWERSTATE_UNKNOWN = 0,
	SDL_POWERSTATE_ON_BATTERY,
	SDL_POWERSTATE_NO_BATTERY,
	SDL_POWERSTATE_CHARGING,
	SDL_POWERSTATE_CHARGED
	
end type

public enum type SDL_JOYSTICKTYPE

	SDL_JOYSTICK_TYPE_UNKNOWN,
	SDL_JOYSTICK_TYPE_GAMECONTROLLER,
	SDL_JOYSTICK_TYPE_WHEEL,
	SDL_JOYSTICK_TYPE_ARCADE_STICK,
	SDL_JOYSTICK_TYPE_FLIGHT_STICK,
	SDL_JOYSTICK_TYPE_DANCE_PAD,
	SDL_JOYSTICK_TYPE_GUITAR,
	SDL_JOYSTICK_DRUM_KIT,
	SDL_JOYSTICK_ARCADE_PAD,
	SDL_JOYSTICK_TYPE_THROTTLE
	
end type

public enum type SDL_JOYSTICKPOWERLEVEL

	SDL_JOYSTICK_POWER_UNKNOWN = -1,
	SDL_JOYSTICK_POWER_EMPTY,
	SDL_JOYSTICK_POWER_LOW,
	SDL_JOYSTICK_POWER_MEDIUM,
	SDL_JOYSTICK_POWER_FULL,
	SDL_JOYSTICK_POWER_WIRED,
	SDL_JOYSTICK_POWER_MAX
	
end type

public enum type SDL_SensorType

 SDL_SENSOR_INVALID = -1,
 SDL_SENSOR_UNKNOWN,
 SDL_SENSOR_ACCEL,
 SDL_SENSOR_GYRO
	
end type

public constant SDL_STANDARD_GRAVITY = 9.80665
�144.24