Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 803B918079
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 21:32:55 +0200 (CEST)
Received: from [::1] (port=36546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOSJB-0008Fi-Vw; Wed, 08 May 2019 15:32:53 -0400
Received: from mail-it1-f176.google.com ([209.85.166.176]:35758)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOSIe-00085L-7Z
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 15:32:50 -0400
Received: by mail-it1-f176.google.com with SMTP id u186so5774058ith.0
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 12:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k3VRjmqF2wKhWTFIf1zsea5GsH2Icsl+7yoDatO9AJs=;
 b=SVi1GgbBLW9DjKEV6hMR0a1Ya0/4w+RcfKgd7zv10oRJDIzjpWKLvCWDFyHoHvUK/R
 3jWriZ84Tv1Da466BoA+1eaIvzQZr8Xs0NnHTz16cg+AgAfYwj/pcHpkMEessDZq4qJt
 bye3mAC0trS2FYMSSdrrRO1S0FgKfAYZjYket+tjycTYJXgLdlX9U7Bep7MlCmUYu8ts
 V/eupB2R6pKQGDJpKY50PnZfbj1uYfyoCftJESB9YCf8JNcY6A0IGLA75V7TGMCDeg27
 K1dIGAEC17gM6j3DgonHY75sEe+wEugltPPySCgPhLOV65iRI/7XBMtwqGMHUhM5Inds
 Zipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k3VRjmqF2wKhWTFIf1zsea5GsH2Icsl+7yoDatO9AJs=;
 b=SIAqnBGVfUYblvtGV9+1qWiqSi1K/UI23OTIK1eZgHDUk1kyTmSqIg1l7XeffTxI8Q
 4N1LF4vAVpw3GKy0uUZcuuFLB+Z8LNF1HLQDpQ5310rTwOLxxcTN+fX5VbAaZwnro54n
 QQg7xI+v0OnaiddGAo3WAEJ6RDrbf7AX8JTQHPGXiHgNICAE6m+0c6sQ9D1SmmhHteRD
 XPKaDYOUwqavykkRKOA+edORXRYWjE7nCWKxxMQGsMPuOVGGpGBkk93C1huvgRR+fmnv
 lG35uLwuVIsw+62zW6XA7zzAJOTQ2IGjmTZwb8ZXItukuPkvyrktqLfiTxGiapmYHPjR
 ofag==
X-Gm-Message-State: APjAAAU6/ZHHUnm1fO/bC33Sz/B35k18SOygg1ZZ4GDepHSdLIFPK9ww
 gB55YzJT/O58d7ZwKF+qMXHltsA7P+3wNipqT3N96g==
X-Google-Smtp-Source: APXvYqyllwHduDY3rjy0vS+82UaCsIyEXVI8POYhwr1UogM9D7e2roAZs2Cdsf2TuAnDzRDUTkn+aoKoJ/yPq8mXHJg=
X-Received: by 2002:a05:660c:78a:: with SMTP id
 h10mr5328678itk.157.1557343899450; 
 Wed, 08 May 2019 12:31:39 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
In-Reply-To: <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
Date: Wed, 8 May 2019 12:31:25 -0700
Message-ID: <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
To: Joe Martin <k5so@k5so.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading
 current firmware/fpga images
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7358872090599695106=="
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

--===============7358872090599695106==
Content-Type: multipart/alternative; boundary="000000000000eb808d05886561e1"

--000000000000eb808d05886561e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You might be best off reverting to a UHD old enough to support the bitfile
currently loaded on your N210. You could then bootstrap your N210 by using
the old UHD to load a newer FPGA image.

Otherwise, it's fairly simple to convert the binfiles (which still exist --
usrp_n210_r2_fpga.bin) to bitfiles. You can take the header from
usrp_n210_r3_fpga.bit and just stick it onto the front of
usrp_n210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The
header is everything up until FF FF FF FF AA 99 55 66.

Lastly, the source is all there, so building using ISE should still be
possible.

Nick

On Wed, May 8, 2019 at 9:57 AM Joe Martin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, Jason=
.  Nope,
> the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99ll see if th=
e support email
> adr can be of use.
>
> Joe
>
> On May 8, 2019, at 10:44 AM, Jason Matusiak <jason@gardettoengineering.co=
m>
> wrote:
>
> Joe, I think you might be SOL.  If you take a look at this thread from me
> last year, I had no luck:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/05=
6223.html
>
>
> Also, when I pinged Ettus directly, here is some info I got back from the=
m
> (from two different emails in the thread):
> "we've been having some trouble tracking down Rev2 bitfiles, because no
> one here was around when that was built. If you're trying to unbrick
> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>
> support@ettus.com might know more by know.
> really sorry, but those Rev2s are just so old. And all the people from
> that era seem to be gone. Sorry, can't help you with those Rev2s."
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Joe
> Martin via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, May 8, 2019 11:55 AM
> *To:* Joe Martin via USRP-users
> *Subject:* [USRP-users] Bringing an elderly N210 to life by loading
> current firmware/fpga images
>
> I am trying to bring an elderly N210 r2.0 with unknown history to life by
> loading current UHD firmware and fpga images from a 1Gigabit ethernet
> connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with
> UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.
>
> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manual: =
USRP2 and
> N2x0 Series=E2=80=9D:
>
> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" file in=
to the
> N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG programmin=
g
> cable from a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=9CP=
rogram
> Succeeded=E2=80=9D for the action.  Ethernet LEDs on the N210 are various=
ly lighted
> showing activity on the connection port.
>
> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing the
> following commands result in the responses shown in the screenshot image
> below:
>
> <Screenshot from 2019-05-08 08-46-52.png>
>
> My (naive!) interpretation of the above responses is that the FPGA may no=
t
> actually have been programmed with the *.bit code even though iMPACT
> reported success in programming.  Can someone assist me in understanding
> whether my interpretation is correct or not and, most importantly, sugges=
t
> what I might try next to bring this N210 to life?
>
> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =E2=80=9CRece=
ived invalid reply 32
> from device=E2=80=9D error.  It seems no matter what I try the =E2=80=9CR=
eceived invalid
> reply 32 from device=E2=80=9D RuntimeError is reported back when I try to=
 load any
> new firmware/FPGA images.
>
> Thanks!
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000eb808d05886561e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You might be best off reverting to a UHD old enough t=
o support the bitfile currently loaded on your N210. You could then bootstr=
ap your N210 by using the old UHD to load a newer FPGA image.<br></div><div=
><br></div><div>Otherwise, it&#39;s fairly simple to convert the binfiles (=
which still exist -- usrp_n210_r2_fpga.bin) to bitfiles. You can take the h=
eader from usrp_n210_r3_fpga.bit and just stick it onto the front of usrp_n=
210_r2_fpga.bin, and call the output usrp_n210_r2_fpga.bit. The header is e=
verything up until FF FF FF FF AA 99 55 66.</div><div><br></div><div>Lastly=
, the source is all there, so building using ISE should still be possible.<=
br></div><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 9:57 AM J=
oe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div style=3D"overflow-wrap: break-word;">Wow, ok=
ay; that=E2=80=99s disheartening.=C2=A0 Thanks much for the info, Jason.=C2=
=A0 Nope, the Rev3 bit file doesn=E2=80=99t work; tried it.=C2=A0 I=E2=80=
=99ll see if the support email adr can be of use. =C2=A0<div><br></div><div=
>Joe<br><div><br><blockquote type=3D"cite"><div>On May 8, 2019, at 10:44 AM=
, Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" targe=
t=3D"_blank">jason@gardettoengineering.com</a>&gt; wrote:</div><br class=3D=
"gmail-m_-156105540658111525Apple-interchange-newline"><div><div style=3D"f=
ont-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvet=
ica,sans-serif;font-size:12pt">Joe, I think you might be SOL.=C2=A0 If you =
take a look at this thread from me last year, I had no luck:=C2=A0<a href=
=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/=
056223.html" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_=
lists.ettus.com/2018-April/056223.html</a></div><div style=3D"font-style:no=
rmal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt"><br></div><div style=3D"font-style:normal;font-variant-c=
aps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">=
<br></div><div style=3D"font-style:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Also, when I pinged=
 Ettus directly, here is some info I got back from them (from two different=
 emails in the thread):</div><div style=3D"font-style:normal;font-variant-c=
aps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">=
&quot;<span style=3D"color:rgb(32,31,30);font-size:14.6667px;background-col=
or:rgb(255,255,255);display:inline">we&#39;ve been having some trouble trac=
king down Rev2 bitfiles, because no</span><br style=3D"color:rgb(32,31,30);=
font-size:14.6667px;background-color:rgb(255,255,255)"><span style=3D"color=
:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);displa=
y:inline">one here was around when that was built. If you&#39;re trying to =
unbrick</span><br style=3D"color:rgb(32,31,30);font-size:14.6667px;backgrou=
nd-color:rgb(255,255,255)"><span style=3D"color:rgb(32,31,30);font-size:14.=
6667px;background-color:rgb(255,255,255);display:inline">them, Rev3 bitfile=
s might be OK, but I&#39;m not completely sure.</span></div><div style=3D"f=
ont-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvet=
ica,sans-serif;font-size:12pt"><br style=3D"color:rgb(32,31,30);font-size:1=
4.6667px;background-color:rgb(255,255,255)"><span style=3D"color:rgb(32,31,=
30);font-size:14.6667px;background-color:rgb(255,255,255);display:inline"><=
a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a>=
<span class=3D"gmail-m_-156105540658111525Apple-converted-space">=C2=A0</sp=
an>might know more by know.</span></div><div style=3D"font-style:normal;fon=
t-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans-serif;font-=
size:12pt"><span style=3D"color:rgb(32,31,30);font-size:14.6667px;backgroun=
d-color:rgb(255,255,255);display:inline">really sorry, but those Rev2s are =
just so old. And all the people from</span><br style=3D"color:rgb(32,31,30)=
;font-size:14.6667px;background-color:rgb(255,255,255)"><span style=3D"colo=
r:rgb(32,31,30);font-size:14.6667px;background-color:rgb(255,255,255);displ=
ay:inline">that era seem to be gone. Sorry, can&#39;t help you with those R=
ev2s.&quot;</span></div><div id=3D"gmail-m_-156105540658111525Signature" st=
yle=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-=
caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-dec=
oration:none"><div><div id=3D"gmail-m_-156105540658111525appendonsend"></di=
v><div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12=
pt"><br></div><hr style=3D"display:inline-block;width:1284.77px"><div id=3D=
"gmail-m_-156105540658111525divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-=
size:11pt" face=3D"Calibri, sans-serif"><b>From:</b><span class=3D"gmail-m_=
-156105540658111525Apple-converted-space">=C2=A0</span>USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">usrp-use=
rs-bounces@lists.ettus.com</a>&gt; on behalf of Joe Martin via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt;<br><b>Sent:</b><span class=3D"gmail-m_-156105540=
658111525Apple-converted-space">=C2=A0</span>Wednesday, May 8, 2019 11:55 A=
M<br><b>To:</b><span class=3D"gmail-m_-156105540658111525Apple-converted-sp=
ace">=C2=A0</span>Joe Martin via USRP-users<br><b>Subject:</b><span class=
=3D"gmail-m_-156105540658111525Apple-converted-space">=C2=A0</span>[USRP-us=
ers] Bringing an elderly N210 to life by loading current firmware/fpga imag=
es</font><div>=C2=A0</div></div><div style=3D"overflow-wrap: break-word;">I=
 am trying to bring an elderly N210 r2.0 with unknown history to life by lo=
ading current UHD firmware and fpga images from a 1Gigabit ethernet connect=
ion on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with UHD 3.14.=
0.HEAD-0-gd20a7ae2 software but having difficulty.=C2=A0<div><br></div><div=
>Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manual: U=
SRP2 and N2x0 Series=E2=80=9D:</div><div><br></div><div>My initial action w=
as to load the =E2=80=9Cusrp_n210_r4_fpga.bit&quot; file into the N210 xc3s=
d3400a FPGA using a Xilinx Platform Cable USB II JTAG programming cable fro=
m a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=9CProgram Succ=
eeded=E2=80=9D for the action.=C2=A0 Ethernet LEDs on the N210 are variousl=
y lighted showing activity on the connection port.</div><div><br></div><div=
>With the N210 connected to the Linux PC 1Gbps ethernet port, issuing the f=
ollowing commands result in the responses shown in the screenshot image bel=
ow:=C2=A0</div><div><br></div><div><span id=3D"gmail-m_-156105540658111525c=
id:70A3E5A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screenshot from 2019-05-08 08-=
46-52.png&gt;</span></div><div><br></div><div><div>My (naive!) interpretati=
on of the above responses is that the FPGA may not actually have been progr=
ammed with the *.bit code even though iMPACT reported success in programmin=
g.=C2=A0 Can someone assist me in understanding whether my interpretation i=
s correct or not and, most importantly, suggest what I might try next to br=
ing this N210 to life? =C2=A0</div><div><br></div><div>The =E2=80=9CPlease =
run:=E2=80=9D suggestion results in the =E2=80=9CReceived invalid reply 32 =
from device=E2=80=9D error.=C2=A0 It seems no matter what I try the =E2=80=
=9CReceived invalid reply 32 from device=E2=80=9D RuntimeError is reported =
back when I try to load any new firmware/FPGA images. =C2=A0</div><div><br>=
</div><div>Thanks!</div><div><br></div><div>Joe</div></div></div></div></di=
v></div></blockquote></div><br></div></div>________________________________=
_______________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000eb808d05886561e1--


--===============7358872090599695106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7358872090599695106==--

