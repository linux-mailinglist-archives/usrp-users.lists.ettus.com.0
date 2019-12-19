Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 556FB126933
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2019 19:35:41 +0100 (CET)
Received: from [::1] (port=34276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ii0eB-0007EX-E1; Thu, 19 Dec 2019 13:35:39 -0500
Received: from mail-bn8nam12olkn2109.outbound.protection.outlook.com
 ([40.92.21.109]:6316 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1ii0e7-00077f-CG
 for usrp-users@lists.ettus.com; Thu, 19 Dec 2019 13:35:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzO2ppIIKr+NoeojFeHI55wuvtuF6DJR3ls6krFN00Tx3Kb7IuPZ062oFC69FZU4O32QXSqyErLgKrpvQXp//cQuxrBltl7AYYs5kftQdS/7YKsOhen6YvLY7mKjd0JTJcS23SrNFFvF/YjqzUoeggZH5rpDswqCLDN4LLpiQHIveUXbBqgSt7TSb051xD4yHvree0rLPkFBQZbBY0JgZD9O9JULun8Xra9vadb3psAzCJqkM4b0zgabp1uBwWLvTsil2hZF/BEtrNyjP2i05nFR30RyXEUjU1PHrMvEz+Cm3e4Mp4R1vavX1nWxVy2sYnpvkamCuToAHKnT6FYdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IrWMUXqmII4VX92HC+NJAU0bM2BNfDeRZkG2grTajtU=;
 b=bEyDl6IdFy2w4USumkehxWxMH9dH9BpxHPluCrr+gRUgsueAg9QAFZNDAZrUdS4EA5bOwyzR/r4pXWxdbvrnJWFGDOWKw/rYvRllhU9nIA7JJecyaXEufrIRzVondRsRYZUeNa0GEkXqW9H0hlfiW6fVYIGjHXJqxXXMc2BYjkHokSoxJ9GEQ2o5cr4LU3Fe3ENF8iJKp/eqN2HxzOKmm1FfAE7tGU1zoK5YEJw8h+jGBEpHLoRlMXKXCYRjfPPxbrewLEHyv5OHnJhym2eLVFPDQf38fiD5lj7kxP21bKnNhW/pWCLFUgpkHhN+hbyo6PO0aeoYt0bmJNIfPHTL7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IrWMUXqmII4VX92HC+NJAU0bM2BNfDeRZkG2grTajtU=;
 b=QRReVA0jGOmlZWL6l5N1pdSTEGtaGng3HWRaBmzqjubWHIfSBuDp2E5qy+/CGfEDAnpXetJDr5F2bFn3oMldff/RJ0H/gTlxJAjWWAEjeapO/FxuCyYYiqWbQZDuLDFa1GJANwHAN0ci1qBm5f1Wd67qR09TQ1d8C5K4VaiJ3U7XmOx2vVLzLWyerQVYjIYDB7bstgsZtLBF80lJsGfIDWIhzjFPdiuca/vIrMhEAV2KvH4UFtfHDKPGGfFgzafqDZsVjrNG6epQubN00WJsENZCy1K0+63kWU5m2hAblrayu/rn2EE5DfBZt6/pp9+XwQSQcS+sLYhu/GdWSBL8Hg==
Received: from BN8NAM12FT010.eop-nam12.prod.protection.outlook.com
 (10.13.182.52) by BN8NAM12HT024.eop-nam12.prod.protection.outlook.com
 (10.13.182.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16; Thu, 19 Dec
 2019 18:34:54 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.182.54) by
 BN8NAM12FT010.mail.protection.outlook.com (10.13.182.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16 via Frontend Transport; Thu, 19 Dec 2019 18:34:54 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2559.015; Thu, 19 Dec 2019
 18:34:54 +0000
To: EJ Kreinar <ejkreinar@gmail.com>
Thread-Topic: [USRP-users] Default RFNoC image for N310 does not compile
Thread-Index: AQHVrqJVbfbx+2jRgkCvVFb9ZGvXmKeyIluAgAASN4CAAWD7gIAAAvMAgAEylwCADGz/gIAAT20AgAAlMceAABmDgIAAELlu
Date: Thu, 19 Dec 2019 18:34:53 +0000
Message-ID: <BN6PR19MB16354CC48D17A7020ECF6F69A4520@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <23a286638bd44719a36b213cbfad0fa5@dlr.de>
 <CAL263izHBHnBjKEYLzEyy-KP67kwKWVzN6LZCwdsmKKdqfWj9w@mail.gmail.com>
 <b7eebc15f5414fc8974d6bff6e597a2b@dlr.de>
 <a70f323b443e4642babc303f482ee157@dlr.de>
 <CADRnH21VEAsgapngZ__=B1WpEsTst6o=t3ME2zDHaZqPwpDpBQ@mail.gmail.com>
 <BN6PR19MB1635996E17A73C996A346A24A4520@BN6PR19MB1635.namprd19.prod.outlook.com>,
 <CADRnH23sddChq07yWakGvsNfyyDEuEQnQ7heq1KQ9B9f8Cg53w@mail.gmail.com>
In-Reply-To: <CADRnH23sddChq07yWakGvsNfyyDEuEQnQ7heq1KQ9B9f8Cg53w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:D0CADF40D5D3E0A18E98E9685425E511A22D6E3C7CEA0D69189F29DAAE1F501C;
 UpperCasedChecksum:86D43B62453AB1A921B225B17B54FD10692435904EA0C8F2770401DFCEAFD783;
 SizeAsReceived:7588; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Zl1djCCVgb/LpGoY/moOe3FEVlQJFDPP]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 41365620-62a0-4868-b1db-08d784b2240e
x-ms-traffictypediagnostic: BN8NAM12HT024:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +OypyUY54aWsaifo/+CdiGqTMRB1EK9MPKSmHFJRscXrgsyXRBRXQWOrmc2/HV6Yv1QeYXjnWla/IfIDvBULZyl6jf+R52eHJLNFta+1vYmVFIoxLqIn4Blu7L+Sws157/dMgpZ/ISbOTdYil+toc75hDs+b8B/dLqWs0FKADl1O7POv7bzepoyNWArybM2+mS42DKyw4mBhZ8K1GsD8bodqMR1iVhZzHvBMrFb64Os=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 41365620-62a0-4868-b1db-08d784b2240e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 18:34:53.9072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT024
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8079916485315731723=="
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

--===============8079916485315731723==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB16354CC48D17A7020ECF6F69A4520BN6PR19MB1635namp_"

--_000_BN6PR19MB16354CC48D17A7020ECF6F69A4520BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We weren't intending on using the split_stream block yet, and we haven't st=
arted building images from source either (waiting on Vivado license still).=
  I simply picked the default RFNoC branch so we could start looking at som=
e of the pre-built blocks as we start investigating building some custom bl=
ocks in the future.  I assumed that the default RFNoC images would work out=
 of the box, kind of like they did with the X310.

Jeff

________________________________
From: EJ Kreinar <ejkreinar@gmail.com>
Sent: Thursday, December 19, 2019 11:28 AM
To: Jeff S <e070832@hotmail.com>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile

Ah, Sorry for the confusion. I assume anyone using the split_stream block i=
s already building FPGA images from source... To clarify, I'm referring to =
rebuilding the FPGA images from source using the uhd-fpga repo, which follo=
ws the instructions here: https://files.ettus.com/manual_archive/v3.14.1.1/=
html/md_usrp3_build_instructions.html

Depending on the target platform you may also need a Vivado license (or tri=
al license). You'll want to clone the uhd-fpga repo, then `git checkout UHD=
-3.14`, then `git cherry-pick 1102779f`, THEN build the images.

Definitely a bummer there's not a patched image released. I didnt realize t=
here were images "in the wild" that used split stream block

EJ

On Thu, Dec 19, 2019 at 11:05 AM Jeff S via USRP-users <usrp-users@lists.et=
tus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of EJ Kreinar via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Thursday, December 19, 2019 7:44 AM
To: Robert.Poehlmann@dlr.de<mailto:Robert.Poehlmann@dlr.de> <Robert.Poehlma=
nn@dlr.de<mailto:Robert.Poehlmann@dlr.de>>
Cc: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BN6PR19MB16354CC48D17A7020ECF6F69A4520BN6PR19MB1635namp_
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
We weren't intending on using the split_stream block yet, and we haven't st=
arted building images from source either (waiting on Vivado license still).=
&nbsp; I simply picked the default RFNoC branch so we could start looking a=
t some of the pre-built blocks as we
 start investigating building some custom blocks in the future.&nbsp; I ass=
umed that the default RFNoC images would work out of the box, kind of like =
they did with the X310.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div id=3D"Signature"><br>
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> EJ Kreinar &lt;ejkr=
einar@gmail.com&gt;<br>
<b>Sent:</b> Thursday, December 19, 2019 11:28 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Ah, Sorry for the confusion. I assume anyone using the spl=
it_stream block is already building FPGA images from source... To clarify, =
I'm referring to rebuilding the FPGA images from source using the uhd-fpga =
repo, which follows the instructions
 here:&nbsp;<a href=3D"https://files.ettus.com/manual_archive/v3.14.1.1/htm=
l/md_usrp3_build_instructions.html">https://files.ettus.com/manual_archive/=
v3.14.1.1/html/md_usrp3_build_instructions.html</a>
<div><br>
</div>
<div>Depending on the target platform you may also need a Vivado license (o=
r trial license). You'll want to clone the uhd-fpga repo, then `git checkou=
t UHD-3.14`, then `git cherry-pick 1102779f`, THEN build the images.</div>
<div><br>
</div>
<div>Definitely a bummer there's not a patched image released. I didnt real=
ize there were images &quot;in the wild&quot; that used split stream block<=
/div>
<div><br>
</div>
<div>EJ</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Dec 19, 2019 at 11:05 AM Je=
ff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
EJ,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I'm finding that I have the same problem after installing 3.14.1.1.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I did the following:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ uhd_images_downloader<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ uhd_image_loader --args &quot;type=3Dn3xx&quot;<br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
which is what I thought we were supposed to do, but I got the same error on=
 my uhd_usrp_probe that Robert did.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I'll see if I can figure out how to cherry-pick the fpga branch.&nbsp; That=
 may be more research since I have a lot of new stuff I &quot;git&quot; to =
learn.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_gmail-m_-4851837339978986592Signature"><br>
<div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-4851837339978986592divRplyFwdMsg" dir=3D"ltr"><font s=
tyle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>F=
rom:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.co=
m" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of EJ Kreinar via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, December 19, 2019 7:44 AM<br>
<b>To:</b> <a href=3D"mailto:Robert.Poehlmann@dlr.de" target=3D"_blank">Rob=
ert.Poehlmann@dlr.de</a> &lt;<a href=3D"mailto:Robert.Poehlmann@dlr.de" tar=
get=3D"_blank">Robert.Poehlmann@dlr.de</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">
<div dir=3D"auto"></div>
<div dir=3D"auto">The split stream bug seems to have been fixed in October =
on the master branch: https<font face=3D"sans-serif"><span style=3D"font-si=
ze:12.8px">://</span></font><a href=3D"http://github.com/EttusResearch/fpga=
/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9" target=3D"_blank">github.=
com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9</a>&=
nbsp;(but
 not yet ported onto 3.14)</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I just cherry-picked 1102779f onto my uhd-fpga UHD-3.14 a=
nd it cleaned it up for me.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I assume this will eventually make it to the UHD-3.14 bra=
nch? But if not the cherry pick works fine</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
<div dir=3D"auto"><br>
</div>
<div>
<div dir=3D"ltr">On Thu, Dec 19, 2019, 4:00 AM Robert via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:=
rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif">
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
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>Von:</b> P=F6hlmann, Robert<br>
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
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:=
rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif">
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
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>Von:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">nate.temple@ettus.com</a>&gt;<=
br>
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
<div style=3D"font-family:arial,helvetica,sans-serif">Hi Robert,<br>
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
<div>
<div dir=3D"ltr">On Tue, Dec 10, 2019 at 8:46 AM &lt;<a href=3D"mailto:Robe=
rt.Poehlmann@dlr.de" rel=3D"noreferrer noreferrer" target=3D"_blank">Robert=
.Poehlmann@dlr.de</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div lang=3D"EN-US">
<div>
<p>Hi Nate!<u></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>I followed the guide in <a href=3D"https://files.ettus.com/manual/md_usr=
p3_build_instructions.html" rel=3D"noreferrer noreferrer" target=3D"_blank"=
>
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>, thus e=
nded up with Vivado 2018.3 and then later found out this requires UHD 3.15.=
 Thanks for pointing me to the Vivado bug. I thought with 2018.3.1 this wou=
ld be fixed, but apparently that
 is not the case. Now I went back to 2018.3 (clean re-install) and installe=
d the patch AR#71898. The standard N310 image compiles fine now.<u></u><u><=
/u></p>
<p><u></u>&nbsp;<u></u></p>
<p>The other error<u></u><u></u></p>
<p><span style=3D"color:black">ERROR: [Synth 8-524] part-select [15:8] out =
of range of prefix 'STR_SINK_FIFOSIZE' [/usr/local/src/uhd/fpga-src/usrp3/l=
ib/rfnoc/noc_shell.v:270]</span><u></u><u></u></p>
<p>seems to be happening only for few specific RFNoC blocks (fosphor and sp=
lit_stream, specifically). Leaving these out, the RFNoC image does compile.=
 Not sure what exactly is the problem, though. The recent commit
<a href=3D"https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b8=
8ce7251d203eb62ae26c9" rel=3D"noreferrer noreferrer" target=3D"_blank">
https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> did not help (tried both versions, neither of them works).<u=
></u><u></u></p>
<p><u></u>&nbsp;<u></u></p>
<p>Regards<u></u><u></u></p>
<p>Robert<span style=3D"font-size:11pt; color:rgb(31,73,125)"> <u></u><u></=
u></span></p>
<p><span style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb=
(31,73,125)"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-size:11pt; font-family:Calibri,sans-serif; color:rgb=
(31,73,125)"><u></u>&nbsp;<u></u></span></p>
<p><b><span style=3D"font-size:10pt; font-family:Tahoma,sans-serif">From:</=
span></b><span style=3D"font-size:10pt; font-family:Tahoma,sans-serif"> Nat=
e Temple [mailto:<a href=3D"mailto:nate.temple@ettus.com" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">nate.temple@ettus.com</a>]
<br>
<b>Sent:</b> Monday, December 09, 2019 8:43 PM<br>
<b>To:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile<u></u><u></u></span></p>
<p><u></u>&nbsp;<u></u></p>
<div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Hi Robert, <u></u><u></u></=
span></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif"><u></u>&nbsp;<u></u></span>=
</p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">So this is a bug related to=
 Vivado, you will need to install this linked below patch and it should res=
olve it.<u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif"><u></u>&nbsp;<u></u></span>=
</p>
</div>
<div>
<p><a href=3D"https://www.xilinx.com/support/answers/71898.html" rel=3D"nor=
eferrer noreferrer" target=3D"_blank"><span style=3D"font-family:Arial,sans=
-serif">https://www.xilinx.com/support/answers/71898.html</span></a><span s=
tyle=3D"font-family:Arial,sans-serif"><u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif"><u></u>&nbsp;<u></u></span>=
</p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Regards,<u></u><u></u></spa=
n></p>
</div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Nate Temple<u></u><u></u></=
span></p>
</div>
</div>
<p><u></u>&nbsp;<u></u></p>
<div>
<div>
<p>On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a href=3D"mailto:nate.t=
emple@ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">nate.templ=
e@ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204); border-style:none none none solid; border-width:medium medi=
um medium 1pt; padding:0cm 0cm 0cm 6pt; margin:5pt 0cm 5pt 4.8pt">
<div>
<div>
<p><span style=3D"font-family:Arial,sans-serif">Hi Robert,<br>
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
<p><u></u>&nbsp;<u></u></p>
<div>
<div>
<p>On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204); border-style:none none none solid; border-width:medium medi=
um medium 1pt; padding:0cm 0cm 0cm 6pt; margin:5pt 0cm 5pt 4.8pt">
<div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952gmail-m_-6331373918561515169gmail-m_-7724419252963540251gmail-m_1=
503436027014080033divtagdefaultwrapper">
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">Hi all!<u></=
u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">I tried to c=
ompile the default RFNoC image for the N310, using UHD on tag v3.15.0.0-rc2=
 and Xilinx Vivado 2018.3.1.
<u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">Running</spa=
n><code><span style=3D"font-size:10pt; color:black"> &quot;make N310_RFNOC_=
XG&quot;, the IP cores are compiled successfully, but then Vivado shows the=
 following errors:</span></code><span style=3D"font-family:Calibri,sans-ser=
if; color:black"><u></u><u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">ERROR: [Synt=
h 8-524] part-select [15:8] out of range of prefix 'STR_SINK_FIFOSIZE' [/us=
r/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]<br>
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
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
</div>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">The full bui=
ld.log file is attached. I did not modify any files, just trying to compile=
 the RFNoC example as provided.<u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">Btw I also t=
ried to build the default image with &quot;make N310_XG&quot;, this one com=
piles but failed later during DRC:<u></u><u></u></span></p>
<div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black">[DRC BIVC-1]=
 Bank IO standard Vcc: Conflicting Vcc voltages in bank 34. For example, th=
e following two ports in this bank have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<u></u><u></u></span></p>
</div>
<div>
<div>
<p style=3D"margin-bottom:12pt"><span style=3D"font-family:Calibri,sans-ser=
if; color:black">[Vivado_Tcl 4-23] Error(s) found during DRC. Placer not ru=
n.<u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:Calibri,sans-serif; color:black"><u></u>&nbsp=
;<u></u></span></p>
</div>
</div>
</div>
<p>_______________________________________________<br>
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
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB16354CC48D17A7020ECF6F69A4520BN6PR19MB1635namp_--


--===============8079916485315731723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8079916485315731723==--

