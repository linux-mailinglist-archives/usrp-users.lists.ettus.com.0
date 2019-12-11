Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F261311A9B8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 12:15:34 +0100 (CET)
Received: from [::1] (port=57364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iezxr-0004sD-3a; Wed, 11 Dec 2019 06:15:31 -0500
Received: from mailin.dlr.de ([194.94.201.12]:5032)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Robert.Poehlmann@dlr.de>)
 id 1iezxm-0004n0-MJ
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 06:15:26 -0500
IronPort-SDR: aeITUa2QTxAttt/PYSxD9mq9U+kxxgLypMrcEOqzlpWyI5LaTU7tQc0H420VjCXEVj+NP7LbwU
 +h+qk07SkI+Q==
IronPort-PHdr: =?us-ascii?q?9a23=3A8g8bWRwrp2G1VtPXCy+O+j09IxM/srCxBDY+r6?=
 =?us-ascii?q?Qd2u8VIJqq85mqBkHD//Il1AaPAdyArasV1qGM6+jJYi8p2d65qncMcZhBBV?=
 =?us-ascii?q?cuqP49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx?=
 =?us-ascii?q?7xKRR6JvjvGo7Vks+7y/2+94fcbglVijexe65+IRG2oAneqMUanZZpJ7osxB?=
 =?us-ascii?q?fOvnZGYfldy3lyJVKUkRb858Ow84Bm/i9Npf8v9NNOXLvjcaggQrNWEDopM2?=
 =?us-ascii?q?Yu5M32rhbDVheA5mEdUmoNjBVFBRXO4QzgUZfwtiv6sfd92DWfMMbrQ704RS?=
 =?us-ascii?q?iu4qF2QxLulSwJNSM28HvPh8JwkqxVvQ6hqRJ8zY7aYo6VNeZxcazGcNwAWW?=
 =?us-ascii?q?ZBXNxcWzBdDo+haYYEEuoPPfxfr4n4v1YDqgewBQ63C+zx0D9ImmX607c90+?=
 =?us-ascii?q?s/EQHG2AkgEMgIsHTSt9j6KaMSUfqvwKbV0zrOdvVb0irz5ojPdxAuu/CMXb?=
 =?us-ascii?q?RofMXP1UkvCx7Fjk6KpYP5ODOV0/wBs2ea7+p8VeKvlnUopxttrTiow8cgko?=
 =?us-ascii?q?bIhoMRylDF8yV4z5w5KsG/SE5+Z9OvDZhetzmCOodrXs8uWXxktSU1x7EcpJ?=
 =?us-ascii?q?K2cisHxI45yxLCc/CLbpSE7gj+WOuSLjp0nm9pdby8ihqo70StyuLxWtG60F?=
 =?us-ascii?q?lUrSdJjtzBu3UJ2hHX5MiIUP5w8lm91jqR1Q3e7/9ILlwpmqfULpMszLo9mY?=
 =?us-ascii?q?AdvEnFAyT4gl/5jLWMeUUh4uWo7uPnbaj4qZKELI90jx3+MrwpmsyiHeQ0Kg?=
 =?us-ascii?q?gOUHaf+eS7zLDt80v3TrtFgPM2kqfXt5PUK8MBqKKnHgNb3Ycs5gilAzen1t?=
 =?us-ascii?q?QYgWMHI0hfdB2ai4jpIUvCL+3mAvunglSslilkx+zeM7H8HpnBNGXPnbTucL?=
 =?us-ascii?q?pn9kJRxgk+wcpB655JEr0BJej8Wk71tNzWFB85NAm0zv77BtV6zYwRR3iPAr?=
 =?us-ascii?q?ODPK3Itl+H+OIvI+2JZIAPvjb9LeMo6OPqjX8jg1MSYLem0YMNaH+kBvRmP1?=
 =?us-ascii?q?mZYX30j9cHC2gKohQxQPb2iFKcVD5Tf3KyULwn6z4lFIKmEZrDRpu3jLOd2y?=
 =?us-ascii?q?e7G4VcZnpaBVCUDXfoa4KEVu8RaCKJOM9hiiUIVaW6S4A/zxGurxT3y75mLu?=
 =?us-ascii?q?rP5i0Yrojv28Zp5+3PiBEy7iZ4ANia02GIHClImTZcQTYq0eZjrEllzlqr3L?=
 =?us-ascii?q?RknuceHttWsaBnSAA/YMrmyOZ3Ecy0YgXMftOMQVCgatmiG3c9Q4RikJc1f0?=
 =?us-ascii?q?9hFoD63Vj41C2wDupNmg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HmAABXzvBd/xWKuApPFhoBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBAREBAQECAgEBAQGBfoEcAYFcEw+BIgqHQo1mmnMXBREPCQEBAQE?=
 =?us-ascii?q?BAQEBAQcBGAEMCgEBAoECSIJ0AoIqOBMCAwEMAQEFAQEBAQEFBAEBAoYgDII?=
 =?us-ascii?q?7IhgBWDgHBQEBAQEBAQEBASMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQE?=
 =?us-ascii?q?PAggFNhkFJhESAQEdAQEBAQMBAWwLEAIBGQQBARQUBycBChQJCAIEDgUIgxu?=
 =?us-ascii?q?BeYENq3qCJ4N8PgEUQECFD4E2jjKBEYJlbIJkAQEBAoEdDG0IhQ4iBI0viE6?=
 =?us-ascii?q?BBIE9hxOOKHIHgUSIEokMhT4jgzaLF4VVhh6XE4YBh2eEBwIEAgQFAhWBPyp?=
 =?us-ascii?q?hgRpxT4IEaAlHERSMcheDUIdBgxJ0AQEIjFqBMYEQAQE?=
X-IronPort-AV: E=Sophos;i="5.69,301,1571695200"; d="scan'208,217";a="26236922"
To: <nate.temple@ettus.com>
Thread-Topic: [USRP-users] Default RFNoC image for N310 does not compile
Thread-Index: AQHVrqJVbfbx+2jRgkCvVFb9ZGvXmKeyEZeAgAASOICAAQO7AIAAYDMAgAFC9TY=
Date: Wed, 11 Dec 2019 11:14:40 +0000
Message-ID: <b7eebc15f5414fc8974d6bff6e597a2b@dlr.de>
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <23a286638bd44719a36b213cbfad0fa5@dlr.de>,
 <CAL263izHBHnBjKEYLzEyy-KP67kwKWVzN6LZCwdsmKKdqfWj9w@mail.gmail.com>
In-Reply-To: <CAL263izHBHnBjKEYLzEyy-KP67kwKWVzN6LZCwdsmKKdqfWj9w@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 0286AE85C6E20C1EB1EA0A1ED360577EA478F2F8CA7D8C4FB8DF4EFCCB6C5AA72000:8
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
Content-Type: multipart/mixed; boundary="===============0885260332737591277=="
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

--===============0885260332737591277==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_b7eebc15f5414fc8974d6bff6e597a2bdlrde_"

--_000_b7eebc15f5414fc8974d6bff6e597a2bdlrde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Nate,


the image does compile now with the patch. However there still seems to be =
s.th. wrong on the host side. When running uhd_usrp_probe, it fails when it=
 reaches the split_stream block:


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
Von: Nate Temple <nate.temple@ettus.com>
Gesendet: Dienstag, 10. Dezember 2019 17:57:20
An: P=F6hlmann, Robert
Cc: USRP-users@lists.ettus.com
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

--_000_b7eebc15f5414fc8974d6bff6e597a2bdlrde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi Nate,</p>
<p><br>
</p>
<p>the image does compile now with the patch. However there still seems to =
be s.th. wrong on the host side. When running uhd_usrp_probe, it fails when=
 it reaches the split_stream block:</p>
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
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> Nate Temple &lt;nate.t=
emple@ettus.com&gt;<br>
<b>Gesendet:</b> Dienstag, 10. Dezember 2019 17:57:20<br>
<b>An:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Betreff:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">Hi Robert,<br>
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
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 10, 2019 at 8:46 AM &lt;<=
a href=3D"mailto:Robert.Poehlmann@dlr.de">Robert.Poehlmann@dlr.de</a>&gt; w=
rote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div lang=3D"EN-US">
<div class=3D"gmail-m_-6331373918561515169WordSection1">
<p class=3D"MsoNormal">Hi Nate!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">I followed the guide in <a href=3D"https://files.ett=
us.com/manual/md_usrp3_build_instructions.html" target=3D"_blank">
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>, thus e=
nded up with Vivado 2018.3 and then later found out this requires UHD 3.15.=
 Thanks for pointing me to the Vivado bug. I thought with 2018.3.1 this wou=
ld be fixed, but apparently that
 is not the case. Now I went back to 2018.3 (clean re-install) and installe=
d the patch AR#71898. The standard N310 image compiles fine now.<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">The other error<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:black">ERROR: [Synth 8-524] par=
t-select [15:8] out of range of prefix 'STR_SINK_FIFOSIZE' [/usr/local/src/=
uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]</span><u></u><u></u></p>
<p class=3D"MsoNormal">seems to be happening only for few specific RFNoC bl=
ocks (fosphor and split_stream, specifically). Leaving these out, the RFNoC=
 image does compile. Not sure what exactly is the problem, though. The rece=
nt commit
<a href=3D"https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b8=
8ce7251d203eb62ae26c9" target=3D"_blank">
https://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> did not help (tried both versions, neither of them works).<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
<p class=3D"MsoNormal">Robert<span style=3D"font-size:11pt;color:rgb(31,73,=
125)"> <u>
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u>&nbsp;<u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u>&nbsp;<u></u>=
</span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-siz=
e:10pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Nate Temple =
[mailto:<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.tem=
ple@ettus.com</a>]
<br>
<b>Sent:</b> Monday, December 09, 2019 8:43 PM<br>
<b>To:</b> P=F6hlmann, Robert<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Default RFNoC image for N310 does not comp=
ile<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Hi Robert, <u>
</u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">So this is a bug related to Vivado, you will need to insta=
ll this linked below patch and it should resolve it.<u></u><u></u></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://www.xilinx.com/support/answers/71=
898.html" target=3D"_blank"><span style=3D"font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;">https://www.xilinx.com/support/answers/71898.html</sp=
an></a><span style=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"=
><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Regards,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Nate Temple<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a h=
ref=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.co=
m</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;">Hi Robert,<br>
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
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
<div>
<div id=3D"gmail-m_-6331373918561515169gmail-m_-7724419252963540251gmail-m_=
1503436027014080033divtagdefaultwrapper">
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Hi all!<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">I tried to compile the default RFNoC image f=
or the N310, using UHD on tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">Running</span><code><span style=3D"font-size=
:10pt;color:black"> &quot;make N310_RFNOC_XG&quot;, the IP cores are compil=
ed successfully, but then Vivado shows the following errors:</span></code><=
span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:=
black"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">ERROR: [Synth 8-524] part-select [15:8] out =
of range of prefix 'STR_SINK_FIFOSIZE' [/usr/local/src/uhd/fpga-src/usrp3/l=
ib/rfnoc/noc_shell.v:270]<br>
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
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">The full build.log file is attached. I did n=
ot modify any files, just trying to compile the RFNoC example as provided.<=
u></u><u></u></span></p>
</div>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black"><u></u>&nbsp;<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:black">Btw I also tried to build the default image with &quot;make N310=
_XG&quot;, this one compiles but failed later during DRC:<u></u><u></u></sp=
an></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black">[DRC BIVC-1] Bank IO standard Vcc: Conflicti=
ng Vcc voltages in bank 34. For example, the following two ports in this ba=
nk have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:black">[Vivado_Tcl 4-2=
3] Error(s) found during DRC. Placer not run.<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;;color:black"><u></u>&nbsp;<u></u></span></p>
</div>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_b7eebc15f5414fc8974d6bff6e597a2bdlrde_--


--===============0885260332737591277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0885260332737591277==--

