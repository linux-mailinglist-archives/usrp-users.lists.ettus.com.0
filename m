Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DF5321D18
	for <lists+usrp-users@lfdr.de>; Mon, 22 Feb 2021 17:35:02 +0100 (CET)
Received: from [::1] (port=57896 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEEAl-0001TK-15; Mon, 22 Feb 2021 11:34:59 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:33200)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lEEAh-0001Nm-3C
 for usrp-users@lists.ettus.com; Mon, 22 Feb 2021 11:34:55 -0500
Received: by mail-oi1-f181.google.com with SMTP id w1so14601007oic.0
 for <usrp-users@lists.ettus.com>; Mon, 22 Feb 2021 08:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v8enUm5Nm4L/gdt7ZkSC9s/w1oOpc0HQmfHRxcHoBcY=;
 b=Fx8E8np8aFCZLGHg4uJwyDtwiEllu4ttARh1SM3Xdth45/z1ZGD8BmamRa43tODzAN
 I26EHgf7eOu2EXjQj0oHApy5gvywr2V5yxnFamIMnFCtJcxJrgCDISrPUFmTolum8OtO
 otefWcaxHljKA8nHGe27gajJdsqbCWIHyDT5scBwSBYJUQwc2/pOjMgkFByoxZTRchIs
 cD95WR1blrrMkdgAu/jDVT1J8nRXaSClFuv/5fwTxlGihbIOkQsQ9n/h30vGjSRFDNzp
 5QQyZdm7EbIUYAHNkyWAQIzLUw65h6WhFXZn7j3w2GvdRYc3fMBnBne6Xv6SjxUgV1Pt
 GVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v8enUm5Nm4L/gdt7ZkSC9s/w1oOpc0HQmfHRxcHoBcY=;
 b=Hq/FGbVkkABK4HMMdawQpb6FhkZpfcegcjRlKN4x7H8j0OONlbBgoiqV5Uk6dYBwFF
 m9XBLIr3Gy2+JuIxSu94Q9FimpFs9IU46ltgOVH33obHTzsFwGFwyAR+NDtWayb1ZpNm
 ZB8HQA471nbAayPhWOUthUlxFqPexFglr8+NeTCdqc/p7yFEZoHQS9/de1XgVFtT0cPe
 o2WLGtIdHxsU9B+C5YMeo2QsgED8QLjv3zXOqbvcvDXl8bniodSAF+Yu57Rd/3rHnwwD
 0y9dJ7yzavf2pGwFgxHdHsVGZPvDBMpiIxxfgjMJiicA/HMB/bugBZpbmFO2UmJayBxB
 6mnA==
X-Gm-Message-State: AOAM531W8fYIEVLMZBGQro5HtafXepePTv86+Aa5QienozcZh6zDLImP
 vw9lfFWGG8JRsUMfP5y+ZWtBRwlSbIpi+Et/XZnwsg==
X-Google-Smtp-Source: ABdhPJycs2h+Fs5+eXH/MrZ2ufWarvNwTzM6Y0ajPQA3MV8q7WdxSUQT2Mh2wiigSGVBooEeDuzxZwBh7H3dYEskEN8=
X-Received: by 2002:a05:6808:10ca:: with SMTP id
 s10mr13854504ois.33.1614011653664; 
 Mon, 22 Feb 2021 08:34:13 -0800 (PST)
MIME-Version: 1.0
References: <CAJZBg9UaWua8Xt2X=oj8i4+OAhp4zumBV+KZL7YhukTh7wa4bA@mail.gmail.com>
 <LNXP123MB37241DFAE25CBB454459BEA2CA819@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB37241DFAE25CBB454459BEA2CA819@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Date: Mon, 22 Feb 2021 11:34:02 -0500
Message-ID: <CAB__hTQhUxcoUkmV2pExSEdVL2KUzR8K3N+Htw07fhUDt_D-8Q@mail.gmail.com>
To: Mark D <md964@hmgcc.gov.uk>
Subject: Re: [USRP-users] How to issue start stream command directly to
 DDC/Radio block using GNU Radio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3725279956275889542=="
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

--===============3725279956275889542==
Content-Type: multipart/related; boundary="00000000000049435605bbef5f65"

--00000000000049435605bbef5f65
Content-Type: multipart/alternative; boundary="00000000000049435505bbef5f64"

--00000000000049435505bbef5f64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark, Tuan,
The problem seems to be that the default block controller does not
propagate the issue_stream_cmd (I'm guessing that this is a "bug" but
perhaps it is intended behavior). In any case, it seems that you have to
build & link your own block controller if you need this to happen. There
are a few work arounds that I know about, but they might not be possible in
all cases:

   - you could build your block controller in-tree.  This assumes that you
   have the ability to build UHD from source code. If so, you can place you=
r
   controller HPP & CPP files in the same folder that Ettus uses for the RF=
NOC
   block HPP & CPP files, edit the CMakeLists.txt file in those folders to =
add
   your new files, and then re-build UHD (and re-install using "make instal=
l"
   or "sudo make install").  This has the nice advantage that uhd_usrp_prob=
e
   will now be aware of your blocks when it runs.
   - you could build your block controller out-of-tree and link it using
   the --no-as-needed link option.  As you pointed out, you will need to li=
nk
   to rfnoc-tutorial or whatever the name of your OOT library is. This libr=
ary
   will need to be installed in a location where the linker can find it.
   Perhaps by running "sudo make install" on your OOT library, this will ta=
ke
   care of it, but not really sure.
   - you could modify the gnuradio code to call issue_stream_cmd() from the
   DDC block rather than from the rx_streamer.  I'm a little fuzzy here
   because I don't use gnuradio, but I have done something similar from an
   Ettus c++ example and it seemed to work fine.  Note that this case is
   assuming you don't really need a block controller and can live with the
   block id "Block#0".  If you actually need your custom block controller
   (because it has functions you want to call), you will need to get one of
   the above items working.

Rob

On Mon, Feb 22, 2021 at 9:50 AM Mark D via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Tuan,
>
>
>
> Good to know that I=E2=80=99m not the only one struggling to get past thi=
s issue.
>
>
>
> I must admit that the solutions proposed have left me rather confused and
> needing to start look into a whole load of stuff that I was hoping to
> avoid. I don=E2=80=99t know how to build controller code in the UHD tree.=
 I was
> also thinking of adapting the rfnox_rx_to_file.cpp code, but again
> modifying this to set the routing in the FPGA and then building it is
> something that I just don=E2=80=99t where to start with.
>
>
>
> I=E2=80=99ve been trying to just build a renamed copy of rfnoc_rx_to_file=
.cpp
> under my OTT folder but so far have had no luck yet even getting it to
> compile.
>
>
>
> I=E2=80=99m assuming the line after =E2=80=9C"-Wl,--no-as-needed=E2=80=9D=
 should have the name of
> OTT module, such as rfnoc-tutorial, but I get an error to =E2=80=9C/usr/b=
in/ld:
> cannot find -rfnoc-tutorial=E2=80=9D
>
>
>
> The tutorial video on UHD with the gain block all looks quite straight
> forward, but not being able to include an OTT block into a real-world GNU
> Radio application is a huge stumbling block for those without prior
> experience building CPP applications and make files.
>
>
>
> Do we have any idea when Ettus plan to release the next revision of UHD
> that would have a fix for this?
>
>
>
> Mark
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Tu=
an
> Hoang Dinh via USRP-users
> *Sent:* 21 February 2021 12:29
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] How to issue start stream command directly to
> DDC/Radio block using GNU Radio
>
>
>
> Hi,
>
> I'm testing my first RFNoC block using GNU radio, when executing the
> graph, the UHD return recv() time out like the picture below.
>
>
>
>
>
> I searched on the mailing list and know this is a problem when start
> stream command did not send directly to DDC/Radio block, the new RFNoC
> block (Block0) did not forward start stream command to DDC block. You can
> find the error here: https://github.com/EttusResearch/uhd/issues/406
>
>
>
> Some solutions have been issued to fix rfnoc_rx_to_file.cpp but I'm still
> looking for how to fix this error in GNU Radio.
>
> Does anyone know how to solve this?
>
> Thank you!
>
>
>
> Best regards,
>
> Tuan
>
>
> ------------------------------
> This email and any files transmitted with it are confidential and intende=
d
> solely for the use of the individual or entity to whom they are addressed=
.
> If you have received this email in error please notify the system manager=
.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000049435505bbef5f64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Mark, Tuan,<div>The problem seems to b=
e that the default block controller does not propagate the issue_stream_cmd=
 (I&#39;m guessing that this is a &quot;bug&quot; but perhaps it is intende=
d behavior). In any case, it seems that you have to build &amp; link your o=
wn block controller if you need this to happen. There are a few work around=
s that I know about, but they might not be possible in all cases:</div><div=
><ul><li>you could build your block controller in-tree.=C2=A0 This assumes =
that you have the ability to build UHD from source code. If so, you can pla=
ce your controller HPP &amp; CPP files in the same folder that Ettus uses f=
or the RFNOC block HPP &amp; CPP files, edit the CMakeLists.txt file in tho=
se folders to add your new files, and then re-build UHD (and re-install usi=
ng &quot;make install&quot; or &quot;sudo make install&quot;).=C2=A0 This h=
as the nice advantage that uhd_usrp_probe will now be aware of your blocks =
when it runs.</li><li>you could build your block controller out-of-tree and=
 link it using the --no-as-needed link option.=C2=A0 As you pointed out, yo=
u will need to link to rfnoc-tutorial or whatever the name of your OOT libr=
ary is. This library will need to be installed in a location where the link=
er can find it.=C2=A0 Perhaps by running &quot;sudo make install&quot; on y=
our OOT library, this will take care of it, but not really sure.</li><li>yo=
u could modify the gnuradio code to call issue_stream_cmd() from the DDC bl=
ock rather than from the rx_streamer.=C2=A0 I&#39;m a little fuzzy here bec=
ause I don&#39;t use gnuradio, but I have done something similar from an Et=
tus c++ example and it seemed to work fine.=C2=A0 Note that this case is as=
suming you don&#39;t really need a block controller and can live with the b=
lock id &quot;Block#0&quot;.=C2=A0 If you actually need your custom block c=
ontroller (because it has functions you want to call), you will need to get=
 one of the above items working.</li></ul><div>Rob</div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 2=
2, 2021 at 9:50 AM Mark D via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-GB" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_5703763828964619152WordSection1">
<p class=3D"MsoNormal"><span>Hi Tuan,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Good to know that I=E2=80=99m not the only one=
 struggling to get past this issue.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I must admit that the solutions proposed have =
left me rather confused and needing to start look into a whole load of stuf=
f that I was hoping to avoid. I don=E2=80=99t know how to build controller =
code in
 the UHD tree. I was also thinking of adapting the rfnox_rx_to_file.cpp cod=
e, but again modifying this to set the routing in the FPGA and then buildin=
g it is something that I just don=E2=80=99t where to start with.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I=E2=80=99ve been trying to just build a renam=
ed copy of rfnoc_rx_to_file.cpp under my OTT folder but so far have had no =
luck yet even getting it to compile.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I=E2=80=99m assuming the line after =E2=80=9C<=
/span>&quot;-Wl,--no-as-needed=E2=80=9D should have the name of OTT module,=
 such as rfnoc-tutorial, but I get an error to =E2=80=9C/usr/bin/ld: cannot=
 find -rfnoc-tutorial=E2=80=9D<span><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>The tutorial video on UHD with the gain block =
all looks quite straight forward, but not being able to include an OTT bloc=
k into a real-world GNU Radio application is a huge stumbling block for tho=
se
 without prior experience building CPP applications and make files.<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Do we have any idea when Ettus plan to release=
 the next revision of UHD that would have a fix for this?<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Mark<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus=
.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Tuan Hoang Dinh via USRP-users<br>
<b>Sent:</b> 21 February 2021 12:29<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] How to issue start stream command directly to =
DDC/Radio block using GNU Radio<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">Hi,</sp=
an><u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">I&#39;m=
 testing my first RFNoC block using GNU radio, when executing=C2=A0the grap=
h, the UHD return recv() time out like the picture below.</span><u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif"><img wi=
dth=3D"629" height=3D"314" style=3D"width: 6.552in; height: 3.2708in;" id=
=3D"gmail-m_5703763828964619152Picture_x0020_1" src=3D"cid:177ca8c2d854ce8e=
91"></span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">I searc=
hed on the mailing list and know this is a problem when start stream comman=
d did not send directly to DDC/Radio block, the new RFNoC block=C2=A0(Block=
0) did not forward start stream command
 to DDC block. You can find the error here:=C2=A0</span><a href=3D"https://=
github.com/EttusResearch/uhd/issues/406" target=3D"_blank"><span style=3D"f=
ont-family:Arial,sans-serif">https://github.com/EttusResearch/uhd/issues/40=
6</span></a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Arial,sans-serif">Some so=
lutions have been issued=C2=A0to fix=C2=A0</span><span style=3D"font-size:9=
pt;font-family:Arial,sans-serif;color:black;background:white">rfnoc_rx_to_f=
ile.cpp but I&#39;m still looking for how to fix
 this error in GNU Radio.</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black;background:white">Does anyone know how to solve this?</sp=
an><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black;background:white">Thank you!</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black;background:white">Best regards,</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:black;background:white">Tuan</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000049435505bbef5f64--
--00000000000049435605bbef5f65
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <177ca8c2d854ce8e91>
X-Attachment-Id: 177ca8c2d854ce8e91

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAE6AnUDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDuPB+s
WOm+C9Hju7hY5Ht9wXBY4yecDt711iyK6qVYEMMr7iuB8Gi907w5DdW9lLdfa7JBE8W0mNl3DawJ
HGTn860JNJv7nWop79bnLiBkkgSMiJlA3gk8qN2enUGgb3OvDAkgEEjqM0m9cE7hgd81x50G9WFH
s4PIvZWu1lmBAJDbtm49+duPSm2ugyNaojWtzte5g8+CaONU2rncQF4PXknrxQI7IMpOAwz1xmq0
ep200MUsDNKkknlgopODkjn0GQea5+80+9bxJbPFZ7IoJ4/KkijQL5QX5tzZ3eo29OlNsdLmgt7e
BdOaKaHUBLNKAoEq7mO7IOTgEdaAOsDAkgEEjrSBlPRge3WuMbQryCxiktYPs91JHdLPLuC5ySU3
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
FFFAH//Z
--00000000000049435605bbef5f65--


--===============3725279956275889542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3725279956275889542==--

