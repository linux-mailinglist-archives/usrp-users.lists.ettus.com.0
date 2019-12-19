Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EA812665E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2019 17:05:55 +0100 (CET)
Received: from [::1] (port=39470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihyJD-0008Us-DJ; Thu, 19 Dec 2019 11:05:51 -0500
Received: from mail-bn8nam11olkn2030.outbound.protection.outlook.com
 ([40.92.20.30]:58081 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1ihyJ9-0008Nc-4R
 for usrp-users@lists.ettus.com; Thu, 19 Dec 2019 11:05:47 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRdV7o3qC4vqQk4wj1Uhli8KnC0zwim9Cz/q/HVliSz0K8MHf/GIHMIXxukXErvW9/zAniKrMp+UnCt3wiUSylTXREVNXqJ02LopxOOSSI1YLnnO14xAFSyrx/pONg4YwNWD0giIBzI5U6fyDxQSbEFLqQXgticN4FZ3sRuBfKP9zseuuztUUaAY9362MhrHQFlYIrSgMM8XZbfYBMcREM7M8oryuLq1TIw1DeCgYoQ0d1DwPYKuxXNpTHDrZViMLNRA6+f44JmRoLvhfr600eUmSbJtGlJxD9XYGk8jzcVlIXt1DjovEGJyr/BervDtOn8Z1Xs96uudds4P1Ln9aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QGwiexCrR1UeymGFjrDtjqz3HeT5xE6GAVqG1jV1MEY=;
 b=ZtBzgxwg60Tpfs2XysbvClLUh7tLq8BNDdsDBDz/19M5AJDBSoP+jyYuTIDtKVh6+3WsVA/AbZYLo0nrjvx71cb1iKgErgVkLHH7OunySN5MoOxLWCoS3pJuU7z0NMbWfreWkQB1smie6yDCo9EY30Wpn4IVAGOf4vyun4A8VP8wwu2iUaboYh6EZfQf+An26t9Wj1M1L9aJEXy3v8sjCXQavqn9/0QSAqAUoQHGOtnaLAa3i8fcK1O45OUxcEwBmLA9qpT3WxMo6UTrdtQR2+xc689ztoCQSL3MIN9Mgd9JztkBTsLEb7xP3QyOLdadQu8Q9w8PzAlMd+By2zP9iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QGwiexCrR1UeymGFjrDtjqz3HeT5xE6GAVqG1jV1MEY=;
 b=Zl75Qh+E9AwfwknWd/bEVQ+iVQZNP0YAcSjjYMwUN3sJ9jKa1VvzcxSwHOUw61IpD6RcmL89GTG3mtUS42GkHLCPkbTUvmSWRkmAxvrPw0RwU53r9B61l4RRPfCchHvdm+deUSKb0vv86wRtLpSSwsCIMHaD+f8u8NUqG0K2q4EDNa/2OV1DW/4UCH1W/aWosyyx/ZCYNEONQPzGN/CyC5qFq94zPddC1LggQ2ODQjI9oN4MRQvjxr7frVffmOvD+QfhRxylRo/VPcYpXVOyzUOQNnVUKhUVH+lkjP0lwUYmuhNei5Vp283dEhW08kHSHcw+4Zrh3GnLye2MW5RnWg==
Received: from BN8NAM11FT058.eop-nam11.prod.protection.outlook.com
 (10.13.176.53) by BN8NAM11HT057.eop-nam11.prod.protection.outlook.com
 (10.13.176.214) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.15; Thu, 19 Dec
 2019 16:05:06 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.176.54) by
 BN8NAM11FT058.mail.protection.outlook.com (10.13.177.58) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15 via Frontend Transport; Thu, 19 Dec 2019 16:05:06 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2559.015; Thu, 19 Dec 2019
 16:05:05 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Default RFNoC image for N310 does not compile
Thread-Index: AQHVrqJVbfbx+2jRgkCvVFb9ZGvXmKeyIluAgAASN4CAAWD7gIAAAvMAgAEylwCADGz/gIAAT20AgAAlMcc=
Date: Thu, 19 Dec 2019 16:05:05 +0000
Message-ID: <BN6PR19MB1635996E17A73C996A346A24A4520@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <23a286638bd44719a36b213cbfad0fa5@dlr.de>
 <CAL263izHBHnBjKEYLzEyy-KP67kwKWVzN6LZCwdsmKKdqfWj9w@mail.gmail.com>
 <b7eebc15f5414fc8974d6bff6e597a2b@dlr.de>
 <a70f323b443e4642babc303f482ee157@dlr.de>,
 <CADRnH21VEAsgapngZ__=B1WpEsTst6o=t3ME2zDHaZqPwpDpBQ@mail.gmail.com>
In-Reply-To: <CADRnH21VEAsgapngZ__=B1WpEsTst6o=t3ME2zDHaZqPwpDpBQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:0A9B01611907B5D35942F3886CC9F6A9BA0C6D0AE45A54DA6B350CE1038D33AA;
 UpperCasedChecksum:3F34C6DB50904C0A5B305CFBC6D30D951FAEA3CAA8EFD328A661C18F0D2BA047;
 SizeAsReceived:7367; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [eH5iRgSIWy5LmAUJz73qxQ69Xy+KTscv]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 28811486-c2db-4603-1497-08d7849d36b6
x-ms-traffictypediagnostic: BN8NAM11HT057:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tA99RQT+T1ORcnJOismz0sdSCqBTKo6LlrKgcb5pRSKDQso4ybtSOCH6vj9gaE1tbxyaN+9NSeEIJmtaaa4pTYVCgNYmplXZ94t0zZPcW54bwuXGtO+B2p9bzNg0/X2XeJuRK3LDzXXvD3Zc4w1/cN/a+UUDzsTYsaVjZmW4mf0WYbgoWC3YTLeHFKdFr/kglNFdWEjEDpr/euDphra8ESUhsYcBss5JqVeYko3PuhM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 28811486-c2db-4603-1497-08d7849d36b6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 16:05:05.7949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM11HT057
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============0486419860107617228=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0486419860107617228==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635996E17A73C996A346A24A4520BN6PR19MB1635namp_"

--_000_BN6PR19MB1635996E17A73C996A346A24A4520BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

EJ,

I'm finding that I have the same problem after installing 3.14.1.1.

I did the following:

$ uhd_images_downloader
$ uhd_image_loader --args "type=3Dn3xx"

which is what I thought we were supposed to do, but I got the same error on=
 my uhd_usrp_probe that Robert did.

I'll see if I can figure out how to cherry-pick the fpga branch.  That may =
be more research since I have a lot of new stuff I "git" to learn.

Jeff


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of EJ Krein=
ar via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, December 19, 2019 7:44 AM
To: Robert.Poehlmann@dlr.de <Robert.Poehlmann@dlr.de>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile

The split stream bug seems to have been fixed in October on the master bran=
ch: https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251=
d203eb62ae26c9<http://github.com/EttusResearch/fpga/commit/1102779f49d44c9e=
8b88ce7251d203eb62ae26c9> (but not yet ported onto 3.14)

I just cherry-picked 1102779f onto my uhd-fpga UHD-3.14 and it cleaned it u=
p for me.

I assume this will eventually make it to the UHD-3.14 branch? But if not th=
e cherry pick works fine

EJ

On Thu, Dec 19, 2019, 4:00 AM Robert via USRP-users <usrp-users@lists.ettus=
.com<mailto:usrp-users@lists.ettus.com>> wrote:

Hi Nate,


some news from my side about this issue:

- For v3.15.0.0-rc2, the error shows up when using split_stream or packet_r=
esizer block (and possibly others)


I then followed your advice and went back to v3.14.1.1, which should be sta=
ble. Here two problems pop up:

- Timing constraints are no fulfilled (using Viado 2017.4)

- A similar error pops up when probing the device:


[INFO] [0/PacketResizer_0] Initializing block control (NOC ID: 0x12E5000000=
000000)
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness=
_t _endianness =3D (uhd::endianness_t)0]
  at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl (C=
E_10_Port_D0) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long=
 unsigned int]
  at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/PacketResizer_0] sr_read64() failed: EnvironmentError: IOError: Block c=
trl (CE_10_Port_D0) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long=
 unsigned int]
  at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()


Is there a fix available for ctrl_iface.cpp?


Regards,

Robert

________________________________
Von: P=F6hlmann, Robert
Gesendet: Mittwoch, 11. Dezember 2019 12:14:40
An: Nate Temple
Cc: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
Betreff: AW: [USRP-users] Default RFNoC image for N310 does not compile


Hi Nate,


the image does compile now with the patch. However there still seems to be =
s.th<http://s.th>. wrong on the host side. When running uhd_usrp_probe, it =
fails when it reaches the split_stream block:


[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x575700000000=
0000)
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/SplitStream_0] sr_write() failed: AssertionError: not _outstanding_seqs=
.empty()
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long=
 unsigned int]
  at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:139

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()



Regards,

Robert

________________________________
Von: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
Gesendet: Dienstag, 10. Dezember 2019 17:57:20
An: P=F6hlmann, Robert
Cc: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
Betreff: Re: [USRP-users] Default RFNoC image for N310 does not compile

Hi Robert,

This patch/line change detailed below should resolve that issue and will be=
 included in the official 3.15.0.0 release:

---
 usrp3/lib/rfnoc/noc_shell.v | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/usrp3/lib/rfnoc/noc_shell.v b/usrp3/lib/rfnoc/noc_shell.v
index 927f40a70..732d41afa 100644
--- a/usrp3/lib/rfnoc/noc_shell.v
+++ b/usrp3/lib/rfnoc/noc_shell.v
@@ -267,7 +267,7 @@ module noc_shell
           .o_tdata({set_addr_bclk[8*k+7:8*k], set_data_bclk[32*k+31:32*k]}=
),
           .o_tvalid(set_stb_bclk[k]), .o_tready(set_stb_bclk[k]));

-       localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D 2**(STR_SINK_FIFOSIZ=
E[8*k+7:8*k]+3);
+       localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D (k < INPUT_PORTS) ? =
2**(STR_SINK_FIFOSIZE[8*k+7:8*k]+3) : 0;
        // "Lines" is the most useful unit for the command FIFO size, since
        // commands take either 2 or 3 lines. Software can do the rest of t=
he
        // math to figure out how many actual command packets it can send.



Regards,
Nate Temple

On Tue, Dec 10, 2019 at 8:46 AM <Robert.Poehlmann@dlr.de<mailto:Robert.Poeh=
lmann@dlr.de>> wrote:

Hi Nate!



I followed the guide in https://files.ettus.com/manual/md_usrp3_build_instr=
uctions.html, thus ended up with Vivado 2018.3 and then later found out thi=
s requires UHD 3.15. Thanks for pointing me to the Vivado bug. I thought wi=
th 2018.3.1 this would be fixed, but apparently that is not the case. Now I=
 went back to 2018.3 (clean re-install) and installed the patch AR#71898. T=
he standard N310 image compiles fine now.



The other error

ERROR: [Synth 8-524] part-select [15:8] out of range of prefix 'STR_SINK_FI=
FOSIZE' [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]

seems to be happening only for few specific RFNoC blocks (fosphor and split=
_stream, specifically). Leaving these out, the RFNoC image does compile. No=
t sure what exactly is the problem, though. The recent commit https://githu=
b.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9 di=
d not help (tried both versions, neither of them works).



Regards

Robert





From: Nate Temple [mailto:nate.temple@ettus.com<mailto:nate.temple@ettus.co=
m>]
Sent: Monday, December 09, 2019 8:43 PM
To: P=F6hlmann, Robert
Cc: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile



Hi Robert,



So this is a bug related to Vivado, you will need to install this linked be=
low patch and it should resolve it.



https://www.xilinx.com/support/answers/71898.html



Regards,

Nate Temple



On Mon, Dec 9, 2019 at 10:38 AM Nate Temple <nate.temple@ettus.com<mailto:n=
ate.temple@ettus.com>> wrote:

Hi Robert,

Thanks for the bug report.

If you're just trying to use RFNoC at this point, I would recommend to stic=
k with the latest stable release, which at this time is v3.14.1.1.

Note, 3.14.x.x UHD will require Vivado 2017.4.


Regards,
Nate Temple



On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <usrp-users@lists.ettu=
s.com<mailto:usrp-users@lists.ettus.com>> wrote:

Hi all!



I tried to compile the default RFNoC image for the N310, using UHD on tag v=
3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.



Running "make N310_RFNOC_XG", the IP cores are compiled successfully, but t=
hen Vivado shows the following errors:



ERROR: [Synth 8-524] part-select [15:8] out of range of prefix 'STR_SINK_FI=
FOSIZE' [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
ERROR: [Synth 8-521] parameter assignment could not be resolved to a consta=
nt [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
ERROR: [Synth 8-196] conditional expression could not be resolved to a cons=
tant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]
ERROR: [Synth 8-6156] failed synthesizing module 'noc_shell__parameterized9=
' [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]
ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor' [/usr/=
local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]
ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core' [/usr/local/sr=
c/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]
ERROR: [Synth 8-6156] failed synthesizing module 'n3xx' [/usr/local/src/uhd=
/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]



The full build.log file is attached. I did not modify any files, just tryin=
g to compile the RFNoC example as provided.







Btw I also tried to build the default image with "make N310_XG", this one c=
ompiles but failed later during DRC:

[DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34. For=
 example, the following two ports in this bank have conflicting VCCOs:
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)

[Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BN6PR19MB1635996E17A73C996A346A24A4520BN6PR19MB1635namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
EJ,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'm finding that I have the same problem after installing 3.14.1.1.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I did the following:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ uhd_images_downloader<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ uhd_image_loader --args &quot;type=3Dn3xx&quot;<br>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
which is what I thought we were supposed to do, but I got the same error on=
 my uhd_usrp_probe that Robert did.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'll see if I can figure out how to cherry-pick the fpga branch.&nbsp; That=
 may be more research since I have a lot of new stuff I &quot;git&quot; to =
learn.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature"><br>
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of EJ Kreinar via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, December 19, 2019 7:44 AM<br>
<b>To:</b> Robert.Poehlmann@dlr.de &lt;Robert.Poehlmann@dlr.de&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">
<div dir=3D"auto"></div>
<div dir=3D"auto" style=3D"">The split stream bug seems to have been fixed =
in October on the master branch: https<font face=3D"sans-serif"><span style=
=3D"font-size:12.8px">://</span></font><a href=3D"http://github.com/EttusRe=
search/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9" style=3D"">git=
hub.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9<=
/a>&nbsp;(but
 not yet ported onto 3.14)</div>
<div dir=3D"auto" style=3D""><br>
</div>
<div dir=3D"auto" style=3D"">I just cherry-picked 1102779f onto my uhd-fpga=
 UHD-3.14 and it cleaned it up for me.</div>
<div dir=3D"auto" style=3D""><br>
</div>
<div dir=3D"auto" style=3D"">I assume this will eventually make it to the U=
HD-3.14 branch? But if not the cherry pick works fine</div>
<div dir=3D"auto" style=3D""><br>
</div>
<div dir=3D"auto" style=3D"">EJ</div>
<div dir=3D"auto" style=3D""><br>
</div>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Dec 19, 2019, 4:00 AM Rober=
t via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div>
<div id=3D"x_m_5202243192553878687m_5326029209902199952divtagdefaultwrapper=
" dir=3D"ltr" style=3D"font-size:12pt; color:#000000; font-family:Calibri,H=
elvetica,sans-serif">
<p><span>Hi Nate,</span></p>
<p><span><br>
</span></p>
<p><span>some news from my side about this issue:<br>
</span></p>
<p><span>- For <span>v3.15.0.0-rc2</span>, the error shows up when using sp=
lit_stream or packet_resizer block (and possibly others)</span></p>
<p><span><br>
</span></p>
<p><span>I then followed your advice and went back to v3.14.1.1, which shou=
ld be stable. Here two problems pop up:</span></p>
<p><span>- Timing constraints are no fulfilled (using Viado 2017.4)</span><=
/p>
<p><span>- A similar error pops up when probing the device:</span></p>
<p><span><br>
</span></p>
<p><span></span></p>
<div>[INFO] [0/PacketResizer_0] Initializing block control (NOC ID: 0x12E50=
00000000000)<br>
[ERROR] [UHD] Exception caught in safe-call.<br>
&nbsp; in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with uhd:=
:endianness_t _endianness =3D (uhd::endianness_t)0]<br>
&nbsp; at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>
this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block c=
trl (CE_10_Port_D0) no response packet - AssertionError: bool(buff)<br>
&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
&nbsp; at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/PacketResizer_0] sr_read64() failed: EnvironmentError: IOError: Block c=
trl (CE_10_Port_D0) no response packet - AssertionError: bool(buff)<br>
&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
&nbsp; at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()</div>
<div><br>
</div>
<div><br>
</div>
<div>Is there a fix available for <span>ctrl_iface.cpp?</span><br>
</div>
<p></p>
<p><br>
</p>
<p>Regards,</p>
<p>Robert<br>
</p>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_5202243192553878687m_5326029209902199952divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=
=3D"#000000"><b>Von:</b> P=F6hlmann, Robert<br>
<b>Gesendet:</b> Mittwoch, 11. Dezember 2019 12:14:40<br>
<b>An:</b> Nate Temple<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Betreff:</b> AW: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"x_m_5202243192553878687m_5326029209902199952divtagdefaultwrapper=
" dir=3D"ltr" style=3D"font-size:12pt; color:#000000; font-family:Calibri,H=
elvetica,sans-serif">
<p>Hi Nate,</p>
<p><br>
</p>
<p>the image does compile now with the patch. However there still seems to =
be <a href=3D"http://s.th" rel=3D"noreferrer noreferrer" target=3D"_blank">
s.th</a>. wrong on the host side. When running uhd_usrp_probe, it fails whe=
n it reaches the split_stream block:</p>
<p><br>
</p>
<p></p>
<div>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/SplitStream_0] sr_write() failed: AssertionError: not _outstanding_seqs=
.empty()<br>
&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
&nbsp; at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:139<br>
<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
Regards,
<p></p>
<p>Robert<br>
</p>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_5202243192553878687m_5326029209902199952divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=
=3D"#000000"><b>Von:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettu=
s.com" rel=3D"noreferrer noreferrer" target=3D"_blank">nate.temple@ettus.co=
m</a>&gt;<br>
<b>Gesendet:</b> Dienstag, 10. Dezember 2019 17:57:20<br>
<b>An:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Betreff:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif">Hi Robert,<br>
<br>
This patch/line change detailed below should resolve that issue and will be=
 included in the official 3.15.0.0 release:<br>
<br>
---<br>
&nbsp;usrp3/lib/rfnoc/noc_shell.v | 2 &#43;-<br>
&nbsp;1 file changed, 1 insertion(&#43;), 1 deletion(-)<br>
<br>
diff --git a/usrp3/lib/rfnoc/noc_shell.v b/usrp3/lib/rfnoc/noc_shell.v<br>
index 927f40a70..732d41afa 100644<br>
--- a/usrp3/lib/rfnoc/noc_shell.v<br>
&#43;&#43;&#43; b/usrp3/lib/rfnoc/noc_shell.v<br>
@@ -267,7 &#43;267,7 @@ module noc_shell<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.o_tdata({set_addr_bclk[8*k&#43;7:=
8*k], set_data_bclk[32*k&#43;31:32*k]}),<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.o_tvalid(set_stb_bclk[k]), .o_tre=
ady(set_stb_bclk[k]));<br>
&nbsp;<br>
- &nbsp; &nbsp; &nbsp; localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D 2**(S=
TR_SINK_FIFOSIZE[8*k&#43;7:8*k]&#43;3);<br>
&#43; &nbsp; &nbsp; &nbsp; localparam [31:0] STR_SINK_FIFO_SIZE_BYTES =3D (=
k &lt; INPUT_PORTS) ? 2**(STR_SINK_FIFOSIZE[8*k&#43;7:8*k]&#43;3) : 0;<br>
&nbsp; &nbsp; &nbsp; &nbsp; // &quot;Lines&quot; is the most useful unit fo=
r the command FIFO size, since<br>
&nbsp; &nbsp; &nbsp; &nbsp; // commands take either 2 or 3 lines. Software =
can do the rest of the<br>
&nbsp; &nbsp; &nbsp; &nbsp; // math to figure out how many actual command p=
ackets it can send.<br>
<br>
<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Dec 10, 2019 at 8:46 AM &lt=
;<a href=3D"mailto:Robert.Poehlmann@dlr.de" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">Robert.Poehlmann@dlr.de</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div lang=3D"EN-US">
<div>
<p class=3D"x_MsoNormal">Hi Nate!<u></u><u></u></p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"x_MsoNormal">I followed the guide in <a href=3D"https://files.e=
ttus.com/manual/md_usrp3_build_instructions.html" rel=3D"noreferrer norefer=
rer" target=3D"_blank">
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>, thus e=
nded up with Vivado 2018.3 and then later found out this requires UHD 3.15.=
 Thanks for pointing me to the Vivado bug. I thought with 2018.3.1 this wou=
ld be fixed, but apparently that
 is not the case. Now I went back to 2018.3 (clean re-install) and installe=
d the patch AR#71898. The standard N310 image compiles fine now.<u></u><u><=
/u></p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"x_MsoNormal">The other error<u></u><u></u></p>
<p class=3D"x_MsoNormal"><span style=3D"color:black">ERROR: [Synth 8-524] p=
art-select [15:8] out of range of prefix 'STR_SINK_FIFOSIZE' [/usr/local/sr=
c/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]</span><u></u><u></u></p>
<p class=3D"x_MsoNormal">seems to be happening only for few specific RFNoC =
blocks (fosphor and split_stream, specifically). Leaving these out, the RFN=
oC image does compile. Not sure what exactly is the problem, though. The re=
cent commit
<a href=3D"https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b8=
8ce7251d203eb62ae26c9" rel=3D"noreferrer noreferrer" target=3D"_blank">
https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> did not help (tried both versions, neither of them works).<u=
></u><u></u></p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"x_MsoNormal">Regards<u></u><u></u></p>
<p class=3D"x_MsoNormal">Robert<span style=3D"font-size:11pt; color:rgb(31,=
73,125)"> <u>
</u><u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:rgb(31,73,125)"><u></u>&nbsp;<u>=
</u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:rgb(31,73,125)"><u></u>&nbsp;<u>=
</u></span></p>
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:10pt; font-family:&quo=
t;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-=
size:10pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Nate Tem=
ple [mailto:<a href=3D"mailto:nate.temple@ettus.com" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">nate.temple@ettus.com</a>]
<br>
<b>Sent:</b> Monday, December 09, 2019 8:43 PM<br>
<b>To:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile<u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;">Hi Robert, <u>
</u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;">So this is a bug related to Vivado, you will need to ins=
tall this linked below patch and it should resolve it.<u></u><u></u></span>=
</p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><a href=3D"https://www.xilinx.com/support/answers/=
71898.html" rel=3D"noreferrer noreferrer" target=3D"_blank"><span style=3D"=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">https://www.xilinx.co=
m/support/answers/71898.html</span></a><span style=3D"font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;">Regards,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;">Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"x_MsoNormal">On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a=
 href=3D"mailto:nate.temple@ettus.com" rel=3D"noreferrer noreferrer" target=
=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204); border-style:none none none solid; border-width:medium medi=
um medium 1pt; padding:0cm 0cm 0cm 6pt; margin:5pt 0cm 5pt 4.8pt">
<div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;">Hi Robert,<br>
<br>
Thanks for the bug report. <br>
<br>
If you're just trying to use RFNoC at this point, I would recommend to stic=
k with the latest stable release, which at this time is v3.14.1.1.
<br>
<br>
Note, 3.14.x.x UHD will require Vivado 2017.4.<br>
<br>
<br>
Regards,<br>
Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"x_MsoNormal">On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><=
u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204); border-style:none none none solid; border-width:medium medi=
um medium 1pt; padding:0cm 0cm 0cm 6pt; margin:5pt 0cm 5pt 4.8pt">
<div>
<div id=3D"x_m_5202243192553878687m_5326029209902199952gmail-m_-63313739185=
61515169gmail-m_-7724419252963540251gmail-m_1503436027014080033divtagdefaul=
twrapper">
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black">Hi all!<u></u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black">I tried to compile the default RFNoC imag=
e for the N310, using UHD on tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black">Running</span><code><span style=3D"font-s=
ize:10pt; color:black"> &quot;make N310_RFNOC_XG&quot;, the IP cores are co=
mpiled successfully, but then Vivado shows the following errors:</span></co=
de><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; c=
olor:black"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black">ERROR: [Synth 8-524] part-select [15:8] o=
ut of range of prefix 'STR_SINK_FIFOSIZE' [/usr/local/src/uhd/fpga-src/usrp=
3/lib/rfnoc/noc_shell.v:270]<br>
ERROR: [Synth 8-521] parameter assignment could not be resolved to a consta=
nt [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]<br>
ERROR: [Synth 8-196] conditional expression could not be resolved to a cons=
tant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]<br>
ERROR: [Synth 8-6156] failed synthesizing module 'noc_shell__parameterized9=
' [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]<br>
ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor' [/usr/=
local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]<br>
ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core' [/usr/local/sr=
c/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]<br>
ERROR: [Synth 8-6156] failed synthesizing module 'n3xx' [/usr/local/src/uhd=
/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]<u></u><u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black">The full build.log file is attached. I di=
d not modify any files, just trying to compile the RFNoC example as provide=
d.<u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; c=
olor:black"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; c=
olor:black"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; c=
olor:black"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;; c=
olor:black">Btw I also tried to build the default image with &quot;make N31=
0_XG&quot;, this one compiles but failed later during DRC:<u></u><u></u></s=
pan></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black">[DRC BIVC-1] Bank IO standard Vcc: Confli=
cting Vcc voltages in bank 34. For example, the following two ports in this=
 bank have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"x_MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;; color:black">[Vivado_Tcl =
4-23] Error(s) found during DRC. Placer not run.<u></u><u></u></span></p>
</div>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;; color:black"><u></u>&nbsp;<u></u></span></p>
</div>
</div>
</div>
<p class=3D"x_MsoNormal">_______________________________________________<br=
>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB1635996E17A73C996A346A24A4520BN6PR19MB1635namp_--


--===============0486419860107617228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0486419860107617228==--

