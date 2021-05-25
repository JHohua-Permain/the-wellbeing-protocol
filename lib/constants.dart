import 'package:the_wellbeing_protocol/models/authentication_method.dart';

// The constants used throughout the app.

///The base uri used to connect to the Fuse Studio backend server.
const API_BASE_URL = "https://studio.fuse.io/api";

const APP_NAME = "The Wellbeing Protocol";

///The authentication method used by the app.
const AUTH_METHOD = AuthenticationMethod.Basic;

///The address for the applications default community.
const DEFAULT_COMMUNITY_ADDRESS = _JEREMY_ECONOMY_COMMUNITY_ADDRESS;

///The address for the applications default token.
const DEFAULT_TOKEN_ADDRESS = _JEZ_TOKEN_ADDRESS;

///The Fuse Network/Blockchain's id compared to other Ethereum based Networks/Blockchain id's.
const FUSE_CHAIN_ID = 122;

///The uri used to connect to Fuse's RPC server.
const FUSE_RPC_URL = "https://rpc.fuse.io";

///The uri to connect to the Fuse sub-graph.
const GRAPH_BASE_URL = 'https://graph.fuse.io/subgraphs/name/fuseio';

// Jeremy's Economy addresses
const _JEREMY_ECONOMY_COMMUNITY_ADDRESS =
    "0x858bce60ffA86cba96DbE47Dde8A87ed7E9DfBF8";
const _JEZ_TOKEN_ADDRESS = "0xe8CD1134F1B4Ef599Fa1F2e3B181F2A2D98E8c8C";

// Ben's Economy addresses
// const _BEN_TOKEN_ADDRESS = "0xf2E83701aD3e0131636D53b93B32167d33b925cD";
// const _BEN_ECONOMY_COMMUNITY_ADDRESS =
//     "0x19e8b1CdF762Eef5Eeb149482f6F4ffC2d894910";
