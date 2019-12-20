Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 527211278F4
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2019 11:12:47 +0100 (CET)
Received: from [::1] (port=52454 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iiFGz-0001w9-QO; Fri, 20 Dec 2019 05:12:41 -0500
Received: from mailin.dlr.de ([194.94.201.12]:35953)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Robert.Poehlmann@dlr.de>)
 id 1iiFGv-0001rW-7L
 for usrp-users@lists.ettus.com; Fri, 20 Dec 2019 05:12:37 -0500
IronPort-SDR: oZO0rDNAuPtc23bwY8tdzBqjbhFHZvCpkrANSv8k/jcCt9a7wH9b9VIR5kgGySPnSAfZXqZLYo
 FR39JOGEwgVw==
IronPort-PHdr: =?us-ascii?q?9a23=3ApyZnih9Mj6HhB/9uRHKM819IXTAuvvDOBiVQ1K?=
 =?us-ascii?q?B21u0cTK2v8tzYMVDF4r011RmVBN6dsasfwLOP+4nbGkU4qa6bt34DdJEeHz?=
 =?us-ascii?q?Qksu4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPER?=
 =?us-ascii?q?vjKwV1Ov71GonPhMiryuy+4ZLebxhGiTanf79+MRu7oQrMusULnIBvNrs/xh?=
 =?us-ascii?q?zVr3VSZu9Y33loJVWdnxb94se/4ptu+DlOtvwi6sBNT7z0c7w3QrJEAjsmNX?=
 =?us-ascii?q?s15NDwuhnYUQSP/HocXX4InRdOHgPI8Qv1Xpb1siv9q+p9xCyXNtD4QLwoRT?=
 =?us-ascii?q?iv6bpgRRn1gykFKjE56nnahMxugqxGvBKvqR9xw4DWb4GUKPVxcbjQcskGSW?=
 =?us-ascii?q?pDRMtdSzBNDp66YoASD+QBJ+FYr4zlqlYJsRW+AhKjC/31yj9UnHP4x6o63P?=
 =?us-ascii?q?ohEQHC2QwvBdQOsHLPodroMKcSS/q5w7TWwjjaaf5dxDnz6I/Nch87oPGMW6?=
 =?us-ascii?q?p9cdHLxUkzFwPJlkufqZD5PzOIzeQBqXSU7+1lVe63hG4nqh1xojiyxsg3kI?=
 =?us-ascii?q?XGmoUVylXc+SR2wYY1Idy4SEh0YNK+DJRQsCSaOo1rSc0hW2FloDs2xqEctZ?=
 =?us-ascii?q?KmfyUHx44rywPRZvGEaYSE/AzvWP6MLTtknn5pZbGyihmo/US9xODxVdO43E?=
 =?us-ascii?q?hKoydKitXMuG4C2h/P5sWCT/Zw+kOs2TiV2A3W9O1LPV44mKjeJpI/3rE/i5?=
 =?us-ascii?q?UevEHNEyLygkr7gqmbfVg+9Oey8eToeLDmq4eZN49zlw7xLLwjmte6AeQkKg?=
 =?us-ascii?q?gOWHWb+fik2L3j40L5RLJKg+U4nKffvp7UKsQVqK6+DQFW1Ygt8QizAymp3t?=
 =?us-ascii?q?sZg3QLNlNFeBSbj4jzIV7COu33DfOlg1i2jThk2ejKPrznAprTMnjOiKrtca?=
 =?us-ascii?q?pn50JBywc+wspT649aB7wCOv7/RFH9uMTdDhAjMgy0x+jnCM961oMbQW+BHq?=
 =?us-ascii?q?iZP7jMvl+S+uIjOfOCZIgLtzb9L/gl4uThjXk/mVIGYKap2YEXZGqlEft4O0?=
 =?us-ascii?q?mZe2bjgs8dEWcWuQozVPLliF+BUT5JeXmyXqQ86SshCI+9AofDQ5qigL2F3C?=
 =?us-ascii?q?uhApJWYWVGAEiWEXj0b4WER+sMaCWKL898iTwET6ChR5Y81RG1qgD60aFnI/?=
 =?us-ascii?q?HQ+i0ZrpLjyMN16/fNmhEu6Tx0Et+d33uRQGFzm2NbDwMxifRyo09nx1aF2L?=
 =?us-ascii?q?JQjPlRFNgV7PRMBFQUL5nZmrhADNr/QB6HRtCESFKjS9OgKT01VJQ9zoldMA?=
 =?us-ascii?q?5GB9y+g0WbjGKRCLgPmunTCQ=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FEAgDNnfxd/xaKuApOFhsBAQEBAQE?=
 =?us-ascii?q?BBQEBAREBAQMDAQEBgXyBHoFdE4ExCodGjVOBAYFnhnaRFxchBAkBAQEBAQE?=
 =?us-ascii?q?BAQEHARgBDAoBAQKBAkiCdAKCQTgTAgMBDAEBBQEBAQEBBQQBAQKGIAyCOyI?=
 =?us-ascii?q?ZWDgHMQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQ8CCAU2GQUmERIBAR0?=
 =?us-ascii?q?BAQEBAwEBGA0GQQsQAgEIEQQBARQNAQYHIQYBChQJCAIEDgUIEgFLgj2BeU0?=
 =?us-ascii?q?DPaoqgXQzg3w+ARRAgxoNgiCBNo4zgRGCXgcuPoIbSQEBAQKBHQxFKAiFDiI?=
 =?us-ascii?q?EjTmBHoc0gQSBPocfji0xQweBRogjiRmBJwGEHSODOosajAGNGooJghyDbId?=
 =?us-ascii?q?uHyODSgIEAgQFAhWBPyphgRpxT4IEaAlHGA2NHheDUIdBgxJ0AQEBAQaRDYE?=
 =?us-ascii?q?xgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.69,335,1571695200"; d="scan'208,217";a="26653985"
To: <ejkreinar@gmail.com>
Thread-Topic: [USRP-users] Default RFNoC image for N310 does not compile
Thread-Index: AQHVrqJVbfbx+2jRgkCvVFb9ZGvXmKeyEZeAgAASOICAAQO7AIAAYDMAgAFC9TaADGs6k4AAQNQAgAAnX4CAABdUgIAAEoaAgAEWU4A=
Date: Fri, 20 Dec 2019 10:11:52 +0000
Message-ID: <4719098b9005427c9189307266d2d659@dlr.de>
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
 <BN6PR19MB16354CC48D17A7020ECF6F69A4520@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB16354CC48D17A7020ECF6F69A4520@BN6PR19MB1635.namprd19.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: E2C4DF0382F003D6EC5B23B13AFF52415F1AA699BE44F6A1879F8A14C558FCA12000:8
MIME-Version: 1.0
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
From: Robert via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert.Poehlmann@dlr.de
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3006135639286184545=="
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

--===============3006135639286184545==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4719098b9005427c9189307266d2d659dlrde_"

--_000_4719098b9005427c9189307266d2d659dlrde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Your solution works! Cherry picked split_stream from the master branch, the=
 image compiles and the block works fine!

Thanks a lot!

Robert


From: USRP-users [mailto:usrp-users-bounces@lists.ettus.com] On Behalf Of J=
eff S via USRP-users
Sent: Thursday, December 19, 2019 7:35 PM
To: EJ Kreinar
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile

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

--_000_4719098b9005427c9189307266d2d659dlrde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<a name=3D"Gru=DF"></a><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Your solution works! Cher=
ry picked split_stream from the master branch, the image compiles and the b=
lock works fine!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Thanks a lot!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:16.0pt;punctuation-wrap:simple;=
text-autospace:none">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Robert<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> USRP-use=
rs [mailto:usrp-users-bounces@lists.ettus.com]
<b>On Behalf Of </b>Jeff S via USRP-users<br>
<b>Sent:</b> Thursday, December 19, 2019 7:35 PM<br>
<b>To:</b> EJ Kreinar<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">We weren't intending on using the split_stre=
am block yet, and we haven't started building images from source either (wa=
iting on Vivado license still).&nbsp; I simply picked the default
 RFNoC branch so we could start looking at some of the pre-built blocks as =
we start investigating building some custom blocks in the future.&nbsp; I a=
ssumed that the default RFNoC images would work out of the box, kind of lik=
e they did with the X310.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Jeff<o:p></o:p></span></p>
</div>
<div id=3D"Signature">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">From:</span></b><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:black"> EJ Kreinar &lt;ejkreinar@gmail.com&gt;<br>
<b>Sent:</b> Thursday, December 19, 2019 11:28 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">Ah, Sorry for the confusion. I assume anyone using t=
he split_stream block is already building FPGA images from source... To cla=
rify, I'm referring to rebuilding the FPGA images from source using the uhd=
-fpga repo, which follows the instructions
 here:&nbsp;<a href=3D"https://files.ettus.com/manual_archive/v3.14.1.1/htm=
l/md_usrp3_build_instructions.html">https://files.ettus.com/manual_archive/=
v3.14.1.1/html/md_usrp3_build_instructions.html</a>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Depending on the target platform you may also need a=
 Vivado license (or trial license). You'll want to clone the uhd-fpga repo,=
 then `git checkout UHD-3.14`, then `git cherry-pick 1102779f`, THEN build =
the images.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Definitely a bummer there's not a patched image rele=
ased. I didnt realize there were images &quot;in the wild&quot; that used s=
plit stream block<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">EJ<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Dec 19, 2019 at 11:05 AM Jeff S via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">EJ,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">I'm finding that I have the same problem aft=
er installing 3.14.1.1.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">I did the following:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<blockquote>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">$ uhd_images_downloader<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">$ uhd_image_loader --args &quot;type=3Dn3xx&=
quot;<o:p></o:p></span></p>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">which is what I thought we were supposed to =
do, but I got the same error on my uhd_usrp_probe that Robert did.<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">I'll see if I can figure out how to cherry-p=
ick the fpga branch.&nbsp; That may be more research since I have a lot of =
new stuff I &quot;git&quot; to learn.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Jeff<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div id=3D"x_gmail-m_-4851837339978986592Signature">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_gmail-m_-4851837339978986592divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">From:</span></b><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:black"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists=
.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
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
ile</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal">The split stream bug seems to have been fixed in Oct=
ober on the master branch: https<span style=3D"font-size:9.5pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;">://</span><a href=3D"http://githu=
b.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9" t=
arget=3D"_blank">github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88c=
e7251d203eb62ae26c9</a>&nbsp;(but
 not yet ported onto 3.14)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I just cherry-picked 1102779f onto my uhd-fpga UHD-3=
.14 and it cleaned it up for me.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I assume this will eventually make it to the UHD-3.1=
4 branch? But if not the cherry pick works fine<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">EJ<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Dec 19, 2019, 4:00 AM Robert via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Hi Nate,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">some news from my side about this issue:<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">- For v3.15.0.0-rc2, the error shows up when using split_stream =
or packet_resizer block (and possibly others)<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">I then followed your advice and went back to v3.14.1.1, which sh=
ould be stable. Here two problems pop up:<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">- Timing constraints are no fulfilled (using Viado 2017.4)<o:p><=
/o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">- A similar error pops up when probing the device:<o:p></o:p></s=
pan></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">[INFO] [0/PacketResizer_0] Initializing bloc=
k control (NOC ID: 0x12E5000000000000)<br>
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
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<o:p></o:p></spa=
n></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Is there a fix available for ctrl_iface.cpp?=
<o:p></o:p></span></p>
</div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Regards,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Robert<o:p></o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Von:</span></b><span sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;;color:black"> P=F6hlmann, Robert<br>
<b>Gesendet:</b> Mittwoch, 11. Dezember 2019 12:14:40<br>
<b>An:</b> Nate Temple<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Betreff:</b> AW: [USRP-users] Default RFNoC image for N310 does not comp=
ile</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Hi Nate,<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">the image does compile now with the patch. However there still s=
eems to be
<a href=3D"http://s.th" target=3D"_blank">s.th</a>. wrong on the host side.=
 When running uhd_usrp_probe, it fails when it reaches the split_stream blo=
ck:<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">[INFO] [0/SplitStream_0] Initializing block =
control (NOC ID: 0x5757000000000000)<br>
[ERROR] [MPMD] Failure during block enumeration: EnvironmentError: IOError:=
 [0/SplitStream_0] sr_write() failed: AssertionError: not _outstanding_seqs=
.empty()<br>
&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64=
_t =3D long unsigned int]<br>
&nbsp; at /usr/local/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:139<br>
<br>
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()<o:p></o:p></spa=
n></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Regards,
<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Robert<o:p></o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:black">Von:</span></b><span sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;;color:black"> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" t=
arget=3D"_blank">nate.temple@ettus.com</a>&gt;<br>
<b>Gesendet:</b> Dienstag, 10. Dezember 2019 17:57:20<br>
<b>An:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Betreff:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Hi Robert,<br>
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
Nate Temple<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Dec 10, 2019 at 8:46 AM &lt;<a href=3D"mailt=
o:Robert.Poehlmann@dlr.de" target=3D"_blank">Robert.Poehlmann@dlr.de</a>&gt=
; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p>Hi Nate!<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>I followed the guide in <a href=3D"https://files.ettus.com/manual/md_usr=
p3_build_instructions.html" target=3D"_blank">
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>, thus e=
nded up with Vivado 2018.3 and then later found out this requires UHD 3.15.=
 Thanks for pointing me to the Vivado bug. I thought with 2018.3.1 this wou=
ld be fixed, but apparently that
 is not the case. Now I went back to 2018.3 (clean re-install) and installe=
d the patch AR#71898. The standard N310 image compiles fine now.<o:p></o:p>=
</p>
<p>&nbsp;<o:p></o:p></p>
<p>The other error<o:p></o:p></p>
<p><span style=3D"color:black">ERROR: [Synth 8-524] part-select [15:8] out =
of range of prefix 'STR_SINK_FIFOSIZE' [/usr/local/src/uhd/fpga-src/usrp3/l=
ib/rfnoc/noc_shell.v:270]</span><o:p></o:p></p>
<p>seems to be happening only for few specific RFNoC blocks (fosphor and sp=
lit_stream, specifically). Leaving these out, the RFNoC image does compile.=
 Not sure what exactly is the problem, though. The recent commit
<a href=3D"https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b8=
8ce7251d203eb62ae26c9" target=3D"_blank">
https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> did not help (tried both versions, neither of them works).<o=
:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>Regards<o:p></o:p></p>
<p>Robert<span style=3D"font-size:11.0pt;color:#1F497D"> </span><o:p></o:p>=
</p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;=
sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Nate Temple [mailto:<a href=
=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</=
a>]
<br>
<b>Sent:</b> Monday, December 09, 2019 8:43 PM<br>
<b>To:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</span><o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi =
Robert, </span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nb=
sp;</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">So =
this is a bug related to Vivado, you will need to install this linked below=
 patch and it should resolve it.</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nb=
sp;</span><o:p></o:p></p>
</div>
<div>
<p><a href=3D"https://www.xilinx.com/support/answers/71898.html" target=3D"=
_blank"><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
">https://www.xilinx.com/support/answers/71898.html</span></a><o:p></o:p></=
p>
</div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nb=
sp;</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Reg=
ards,</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Nat=
e Temple</span><o:p></o:p></p>
</div>
</div>
<p>&nbsp;<o:p></o:p></p>
<div>
<div>
<p>On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a href=3D"mailto:nate.t=
emple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<o:p=
></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid windowtext 1.0pt;padding=
:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;marg=
in-bottom:5.0pt;border-color:currentcolor currentcolor currentcolor rgb(204=
,204,204)">
<div>
<div>
<p><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi =
Robert,<br>
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
Nate Temple</span><o:p></o:p></p>
</div>
</div>
<p>&nbsp;<o:p></o:p></p>
<div>
<div>
<p>On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid windowtext 1.0pt;padding=
:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;marg=
in-bottom:5.0pt;border-color:currentcolor currentcolor currentcolor rgb(204=
,204,204)">
<div>
<div id=3D"x_gmail-m_-4851837339978986592x_m_5202243192553878687m_532602920=
9902199952gmail-m_-6331373918561515169gmail-m_-7724419252963540251gmail-m_1=
503436027014080033divtagdefaultwrapper">
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Hi all!</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">I tried to compile the default RFNoC image for the N310, using U=
HD on tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Running</span><code><span style=3D"font-size:10.0pt;color:black"=
> &quot;make N310_RFNOC_XG&quot;, the IP cores are compiled successfully, b=
ut then Vivado shows the following errors:</span></code><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">ERROR: [Synth 8-524] part-select [15:8] out of range of prefix '=
STR_SINK_FIFOSIZE' [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v=
:270]<br>
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
/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">The full build.log file is attached. I did not modify any files,=
 just trying to compile the RFNoC example as provided.</span><o:p></o:p></p=
>
</div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Btw I also tried to build the default image with &quot;make N310=
_XG&quot;, this one compiles but failed later during DRC:</span><o:p></o:p>=
</p>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">[DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in b=
ank 34. For example, the following two ports in this bank have conflicting =
VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)</span><o:p></o:p></p>
</div>
<div>
<div>
<p style=3D"margin-bottom:12.0pt"><span style=3D"font-family:&quot;Calibri&=
quot;,&quot;sans-serif&quot;;color:black">[Vivado_Tcl 4-23] Error(s) found =
during DRC. Placer not run.</span><o:p></o:p></p>
</div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">&nbsp;</span><o:p></o:p></p>
</div>
</div>
</div>
<p>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></p>
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
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><o:p></o:p></p>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_4719098b9005427c9189307266d2d659dlrde_--


--===============3006135639286184545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3006135639286184545==--

