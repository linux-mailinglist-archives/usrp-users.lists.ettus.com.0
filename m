Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BE69D9B17
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 17:11:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3BF6385A4F
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 11:11:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732637466; bh=al2U7UOVf17/4u2J4Pz7FO4KN9eWyFmACOmg+C8LyM0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Q7yUGxiTStFQrnSHC99OG9ngJBCkY8iXO6iXXSBN5VKHjkDCTjXUBQdOYudXm2Vsv
	 ypznhdxHBqKQ+AfNTLxl+LJ2D+6/t39yGvvPio5WZOVdNyRg874o5gmspAH2ROk1GZ
	 O7Ry6txIpouzgsXyc0YsbxhO4jfyxldstsuaQJZuXakZL5qEIeDlvg4g6ra04c5+VU
	 JQlUAixnZsJ9bsqsPwzHOusjal/3dlyq+44ONsuRs5PqE+Ziop+ytERGo2e46i8iUY
	 nHwuTgovBjIOd9OMxLmE4ESIqVX/vcED7KvgtDMLLErP3+0QaBd+8r1fdqfMwUMtZC
	 IjpoDK89+d+PQ==
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by mm2.emwd.com (Postfix) with ESMTPS id DC24D3858B0
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 11:10:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="FBPT8pdf";
	dkim-atps=neutral
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-843671e1426so48335139f.0
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 08:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1732637453; x=1733242253; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dVrj93NeNEXM1U15ZuCzyaIbJ/BjsRxelqMFzwjjTsE=;
        b=FBPT8pdfax8lSBYGnYtyjGb++uBhaVHh0H69Z9GnpFcuob6eagjuV92eP/G2wmbVMk
         WGNeyYwa5g0miIlDSPJKa1+ioUEC3NxaEP4uPY8Bmw/sYcKN+yiZh7VC1JidHe8uHmE/
         xeVXyyc0sSDZr1/sov++uIXBjlmsO0uuJtoY3BVlfzUSmbHLp/EpviJC/aoKPJl8zhhs
         HNUKIg1AXWusYuAd47QDwlGddNlrTl2Vh3xeCNP30s97H4JNxWOeV35ApjtejfXl7o4l
         RIfccXzUjNd/N5Any/+FQZEqiAazQkgjruZM3otEkHj3AhaoYeEH7CJB1YZ56sRdPQT6
         VcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732637453; x=1733242253;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVrj93NeNEXM1U15ZuCzyaIbJ/BjsRxelqMFzwjjTsE=;
        b=QAv6F4NPE85cijob6BJUaYK8cVfCCNH+LQbC/sLHh1R1IdBD1kk99U6SXb0nPzkrwq
         FNMl5Xpk9gIN9CxRLiYc+400luqCQgPE1so/ILXeQrBW0rsjnq+RYLKpA1WIySH2O/OP
         CHUQibLfKFEBs6lSlb/39xEbNjqR5Vb4naWQhAWfkFxa6K53CK0P4lBy2B+P4y1f9gVE
         0Lr3v0av3Xv02eoA+uQjehCdbshDxN/f9e1eOqcOtQba210lELqpEA+4JneqfqTfYzu9
         kXdOv+naU4175LyytpLsAC8NxG8fQ6cwjcDocgpRI45DEMRStvhcH5zfg7TgdM9R5RCZ
         /XoA==
X-Gm-Message-State: AOJu0YwgA3Qk/0/+KSjtS7O0Sg3ybOlP45yIeu9m110qu5HSQItG5jSX
	dXv7shDMCMns9UoX6BHHgtOGVA6pgMBKRtkcJUia/DgkOGoDaSa6l0ZYueKIx20gEkOR54kstF6
	QP0avzaYLtlxEAx2cGlfob/AIpbaISBIQIIsWk+QM8MYNiknouic=
X-Gm-Gg: ASbGnctUCYjL0KTYGT+hfuEudBbriYxp94l6TdTTi/EaR5TeWLuB6buVdmfLPgQsV65
	RlS7owAh+CxxFQ3lpiEjNP/oISDj0Vm4S
X-Google-Smtp-Source: AGHT+IH0aliFcwr3/gj6/vUu4gesxen2yYGf/TM2Xs3FHux8m4StV3Kk3mXWV/mVrPiUGw4IrAmJcfxlMJez6e/dea0=
X-Received: by 2002:a05:6602:1486:b0:83b:28e2:4985 with SMTP id
 ca18e2360f4ac-83ecdd243a1mr1818563339f.12.1732637453054; Tue, 26 Nov 2024
 08:10:53 -0800 (PST)
MIME-Version: 1.0
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
 <35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
In-Reply-To: <35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
Date: Tue, 26 Nov 2024 17:10:42 +0100
Message-ID: <CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000ea2c840627d317c0"
Message-ID-Hash: UNXR2KYHVHMNT4UUCR3EQY4RTZN67SYD
X-Message-ID-Hash: UNXR2KYHVHMNT4UUCR3EQY4RTZN67SYD
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UNXR2KYHVHMNT4UUCR3EQY4RTZN67SYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000ea2c840627d317c0
Content-Type: multipart/alternative; boundary="000000000000ea2c830627d317bb"

--000000000000ea2c830627d317bb
Content-Type: text/plain; charset="UTF-8"

Many thanks for prompt reply Marcus! Please find attached the printout for
that probe command you asked for.

On Tue, 26 Nov 2024 at 16:59, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 26/11/2024 10:18, Houshang wrote:
>
> Hello
>
> I have following UHD version on my server:
>
>
>
> *ad@bm-super11-intel:~/houshang$ uhd_config_info --version UHD
> 4.7.0.0-0ubuntu1~jammy1 ad@bm-super11-intel:~/houshang$ ssh
> root@10.10.0.100 <root@10.10.0.100>*
>
> And the following UHD version on my n310:
>
>
>
> *root@ni-n3xx-32000F1:~# uhd_config_info --version UHD 4.7.0.0-0-ga5ed1872
> root@ni-n3xx-32000F1:~# *
>
> They are the same and my n310 is updated with the following file:
>
>
>
> *ad@bm-super11-intel:~/houshang$ md5sum
> /usr/share/uhd/images/usrp_n310_fpga_HG.bit
> 532b338d6861268c05a4fd9837ca80e5
>  /usr/share/uhd/images/usrp_n310_fpga_HG.bit
> ad@bm-super11-intel:~/houshang$ *
>
> I am running srsRAN gNB on my server (*Commit 9d5dd742a*). A version of
> srs of srsRAN that is compiled with *UHD 4.7.0.0.*
>
>
> Here are the error messages I get:
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *==== gNB started === Type <h> to view help Error: failed receiving
> packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.
> Late: 2805; Underflow: 2238; Overflow: 0; Error: failed receiving packet.
> RfnocError: OpTimeout: Control operation timed out waiting for ACK. Error:
> failed receiving packet. RfnocError: OpTimeout: Control operation timed out
> waiting for ACK. Late: 0; Underflow: 5; Overflow: 0; Error: failed
> receiving packet. RfnocError: OpTimeout: Control operation timed out
> waiting for ACK. Error: failed receiving packet. RfnocError: OpTimeout:
> Control operation timed out waiting for ACK. Late: 0; Underflow: 4;
> Overflow: 0; Error: failed receiving packet. RfnocError: OpTimeout: Control
> operation timed out waiting for ACK. Error: failed receiving packet.
> RfnocError: OpTimeout: Control operation timed out waiting for ACK. Late:
> 0; Underflow: 4; Overflow: 0; Error: failed receiving packet. RfnocError:
> OpTimeout: Control operation timed out waiting for ACK. Error: failed
> receiving packet. RfnocError: OpTimeout: Control operation timed out
> waiting for ACK. Late: 0; Underflow: 4; Overflow: 0; Error: failed
> receiving packet. RfnocError: OpTimeout: Control operation timed out
> waiting for ACK.*
>
>
> And obviously it is not working with this amount of errors.
>
> Can anyone help me with this please? Is it a bug in the UHD version? Or is
> there something I am missing here?
>
> Thanks
> Houshang
>
> Try "the basics" first.
>
> What does:
>
> uhd_usrp_probe --args "type=n3xx,product=n310,addr=192.168.10.2"
>
>
> Produce (you might have to change the addr to whatever the address is of
> your N310).
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>

--000000000000ea2c830627d317bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Many thanks for prompt reply Marcus! Please find attached =
the printout for that probe command you asked for.<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 =
at 16:59, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pa=
tchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/11/2024 10:18, Houshang wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hello</div>
        <div><br>
        </div>
        <div>I have following UHD version on my server:</div>
        <br>
        <i><span style=3D"background-color:rgb(238,238,238)">ad@bm-super11-=
intel:~/houshang$
            uhd_config_info --version<br>
            UHD 4.7.0.0-0ubuntu1~jammy1<br>
            ad@bm-super11-intel:~/houshang$ ssh <a href=3D"mailto:root@10.1=
0.0.100" target=3D"_blank">root@10.10.0.100</a></span></i><br>
        <br>
        And the following UHD version on my n310:<br>
        <br>
        <i><span style=3D"background-color:rgb(238,238,238)">root@ni-n3xx-3=
2000F1:~#
            uhd_config_info --version<br>
            UHD 4.7.0.0-0-ga5ed1872<br>
            root@ni-n3xx-32000F1:~# </span></i><br>
        <br>
        <div>They are the same and my n310 is updated with the following
          file:</div>
        <div><br>
        </div>
        <i><span style=3D"background-color:rgb(238,238,238)">ad@bm-super11-=
intel:~/houshang$
            md5sum /usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
            532b338d6861268c05a4fd9837ca80e5
            =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
            ad@bm-super11-intel:~/houshang$ </span></i><br>
        <br>
        I am running srsRAN gNB on my server (<i><span style=3D"background-=
color:rgb(238,238,238)">Commit 9d5dd742a</span></i>).
        A version of srs of srsRAN that is compiled with <i><span style=3D"=
background-color:rgb(238,238,238)">UHD 4.7.0.0.</span></i><br>
        <br>
        <br>
        Here are the error messages I get:<br>
        <br>
        <i><span style=3D"background-color:rgb(238,238,238)">=3D=3D=3D=3D g=
NB
            started =3D=3D=3D<br>
            Type &lt;h&gt; to view help<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 2805; Underflow: 2238; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 5; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 4; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 4; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 4; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.</span></i><br>
        <br>
        <br>
        And obviously it is not working with this amount of errors.<br>
        <br>
        Can anyone help me with this please? Is it a bug in the UHD
        version? Or is there something I am missing here?<br>
        <br>
        Thanks<br>
        Houshang<br>
      </div>
      <br>
    </blockquote>
    Try &quot;the basics&quot; first.<br>
    <br>
    What does:<br>
    <br>
    uhd_usrp_probe --args &quot;type=3Dn3xx,product=3Dn310,addr=3D192.168.1=
0.2&quot;<br>
    <br>
    <br>
    Produce (you might have to change the addr to whatever the address
    is of your N310).<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>

--000000000000ea2c830627d317bb--

--000000000000ea2c840627d317c0
Content-Type: text/plain; charset="US-ASCII"; name="uhd_usrp_probe.txt"
Content-Disposition: attachment; filename="uhd_usrp_probe.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_m3ynl7bu0>
X-Attachment-Id: f_m3ynl7bu0

YWRAYm0tc3VwZXIxMS1pbnRlbDp+L2hvdXNoYW5nJCB1aGRfdXNycF9wcm9iZSAtLWFyZ3MgInR5
cGU9bjN4eCxwcm9kdWN0PW4zMTAsYWRkcj0xMC4xMC4wLjEwMCIKW0lORk9dIFtVSERdIGxpbnV4
OyBHTlUgQysrIHZlcnNpb24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IFVIRF80LjcuMC4wLTB1YnVu
dHUxfmphbW15MQpbSU5GT10gW01QTURdIEluaXRpYWxpemluZyAxIGRldmljZShzKSBpbiBwYXJh
bGxlbCB3aXRoIGFyZ3M6IG1nbXRfYWRkcj0xMC4xMC4wLjEwMCx0eXBlPW4zeHgscHJvZHVjdD1u
MzEwLHNlcmlhbD0zMjAwMEYxLG5hbWU9bmktbjN4eC0zMjAwMEYxLGZwZ2E9SEcsY2xhaW1lZD1G
YWxzZSxhZGRyPTEwLjEwLjAuMTAwCltJTkZPXSBbTVBNLlBlcmlwaE1hbmFnZXJdIGluaXQoKSBj
YWxsZWQgd2l0aCBkZXZpY2UgYXJncyBgZnBnYT1IRyxtZ210X2FkZHI9MTAuMTAuMC4xMDAsbmFt
ZT1uaS1uM3h4LTMyMDAwRjEscHJvZHVjdD1uMzEwLGNsb2NrX3NvdXJjZT1pbnRlcm5hbCx0aW1l
X3NvdXJjZT1pbnRlcm5hbCcuCiAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KIC8KfCAgICAgICBEZXZpY2U6IE4zMDAtU2VyaWVzIERldmljZQp8
ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwp8ICAgIC8KfCAgIHwgICAgICAgTWJvYXJkOiBuaS1uM3h4LTMyMDAwRjEKfCAgIHwgICBkYm9h
cmRfMF9waWQ6IDMzNgp8ICAgfCAgIGRib2FyZF8wX3NlcmlhbDogMzFGNkJEMQp8ICAgfCAgIGRi
b2FyZF8xX3BpZDogMzM2CnwgICB8ICAgZGJvYXJkXzFfc2VyaWFsOiAzMUY2QkQ1CnwgICB8ICAg
ZWVwcm9tX3ZlcnNpb246IDMKfCAgIHwgICBmc192ZXJzaW9uOiAyMDI0MDYyODEzNDI0OAp8ICAg
fCAgIG1lbmRlcl9hcnRpZmFjdDogdjQuNy4wLjBfbjN4eAp8ICAgfCAgIG1wbV9zd192ZXJzaW9u
OiA0LjcuMC4wLWdhNWVkMTg3Mgp8ICAgfCAgIHBpZDogMTY5NjIKfCAgIHwgICBwcm9kdWN0OiBu
MzEwCnwgICB8ICAgcmV2OiAxMAp8ICAgfCAgIHJwY19jb25uZWN0aW9uOiByZW1vdGUKfCAgIHwg
ICBzZXJpYWw6IDMyMDAwRjEKfCAgIHwgICB0eXBlOiBuM3h4CnwgICB8ICAgTVBNIFZlcnNpb246
IDUuMwp8ICAgfCAgIEZQR0EgVmVyc2lvbjogOC4yCnwgICB8ICAgRlBHQSBnaXQgaGFzaDogYzM3
YjMxOC5jbGVhbgp8ICAgfCAgIFJGTm9DIGNhcGFibGU6IFllcwp8ICAgfCAgIAp8ICAgfCAgIFRp
bWUgc291cmNlczogIGludGVybmFsLCBleHRlcm5hbCwgZ3BzZG8sIHNmcDAKfCAgIHwgICBDbG9j
ayBzb3VyY2VzOiBleHRlcm5hbCwgaW50ZXJuYWwsIGdwc2RvCnwgICB8ICAgU2Vuc29yczogcmVm
X2xvY2tlZCwgZ3BzX2xvY2tlZCwgdGVtcCwgZmFuLCBncHNfZ3BnZ2EsIGdwc19za3ksIGdwc190
aW1lLCBncHNfdHB2CnwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCnwgICAgLwp8ICAgfCAgICAgICBSRk5vQyBibG9ja3Mgb24gdGhpcyBk
ZXZpY2U6CnwgICB8ICAgCnwgICB8ICAgKiAwL0REQyMwCnwgICB8ICAgKiAwL0REQyMxCnwgICB8
ICAgKiAwL0RVQyMwCnwgICB8ICAgKiAwL0RVQyMxCnwgICB8ICAgKiAwL1JhZGlvIzAKfCAgIHwg
ICAqIDAvUmFkaW8jMQp8ICAgfCAgICogMC9SZXBsYXkjMAp8ICAgICBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp8ICAgIC8KfCAgIHwgICAgICAg
U3RhdGljIGNvbm5lY3Rpb25zIG9uIHRoaXMgZGV2aWNlOgp8ICAgfCAgIAp8ICAgfCAgICogMC9T
RVAjMDowPT0+MC9EVUMjMDowCnwgICB8ICAgKiAwL0RVQyMwOjA9PT4wL1JhZGlvIzA6MAp8ICAg
fCAgICogMC9SYWRpbyMwOjA9PT4wL0REQyMwOjAKfCAgIHwgICAqIDAvRERDIzA6MD09PjAvU0VQ
IzA6MAp8ICAgfCAgICogMC9TRVAjMTowPT0+MC9EVUMjMDoxCnwgICB8ICAgKiAwL0RVQyMwOjE9
PT4wL1JhZGlvIzA6MQp8ICAgfCAgICogMC9SYWRpbyMwOjE9PT4wL0REQyMwOjEKfCAgIHwgICAq
IDAvRERDIzA6MT09PjAvU0VQIzE6MAp8ICAgfCAgICogMC9TRVAjMjowPT0+MC9EVUMjMTowCnwg
ICB8ICAgKiAwL0RVQyMxOjA9PT4wL1JhZGlvIzE6MAp8ICAgfCAgICogMC9SYWRpbyMxOjA9PT4w
L0REQyMxOjAKfCAgIHwgICAqIDAvRERDIzE6MD09PjAvU0VQIzI6MAp8ICAgfCAgICogMC9TRVAj
MzowPT0+MC9EVUMjMToxCnwgICB8ICAgKiAwL0RVQyMxOjE9PT4wL1JhZGlvIzE6MQp8ICAgfCAg
ICogMC9SYWRpbyMxOjE9PT4wL0REQyMxOjEKfCAgIHwgICAqIDAvRERDIzE6MT09PjAvU0VQIzM6
MAp8ICAgfCAgICogMC9TRVAjNDowPT0+MC9SZXBsYXkjMDowCnwgICB8ICAgKiAwL1JlcGxheSMw
OjA9PT4wL1NFUCM0OjAKfCAgIHwgICAqIDAvU0VQIzU6MD09PjAvUmVwbGF5IzA6MQp8ICAgfCAg
ICogMC9SZXBsYXkjMDoxPT0+MC9TRVAjNTowCnwgICB8ICAgKiAwL1NFUCM2OjA9PT4wL1JlcGxh
eSMwOjIKfCAgIHwgICAqIDAvUmVwbGF5IzA6Mj09PjAvU0VQIzY6MAp8ICAgfCAgICogMC9TRVAj
NzowPT0+MC9SZXBsYXkjMDozCnwgICB8ICAgKiAwL1JlcGxheSMwOjM9PT4wL1NFUCM3OjAKfCAg
ICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
fCAgICAvCnwgICB8ICAgICAgIFRYIERib2FyZDogMC9SYWRpbyMwCnwgICB8ICAgICBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp8ICAgfCAgICAv
CnwgICB8ICAgfCAgICAgICBUWCBGcm9udGVuZDogMAp8ICAgfCAgIHwgICBOYW1lOiBNYWduZXNp
dW0KfCAgIHwgICB8ICAgQW50ZW5uYXM6IFRYL1JYCnwgICB8ICAgfCAgIEZyZXEgcmFuZ2U6IDEu
MDAwIHRvIDYwMDAuMDAwIE1Iegp8ICAgfCAgIHwgICBHYWluIHJhbmdlIHJmaWM6IDAuMCB0byAw
LjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBkc2E6IDAuMCB0byAwLjAgc3Rl
cCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBhbXA6IDAuMCB0byAwLjAgc3RlcCAwLjAg
ZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBhbGw6IDAuMCB0byA2NS4wIHN0ZXAgMC41IGRCCnwg
ICB8ICAgfCAgIEJhbmR3aWR0aCByYW5nZTogMjAwMDAwMDAuMCB0byAxMDAwMDAwMDAuMCBzdGVw
IDAuMCBIegp8ICAgfCAgIHwgICBDb25uZWN0aW9uIFR5cGU6IElRCnwgICB8ICAgfCAgIFVzZXMg
TE8gb2Zmc2V0OiBObwp8ICAgfCAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KfCAgIHwgICAgLwp8ICAgfCAgIHwgICAgICAgVFggRnJvbnRl
bmQ6IDEKfCAgIHwgICB8ICAgTmFtZTogTWFnbmVzaXVtCnwgICB8ICAgfCAgIEFudGVubmFzOiBU
WC9SWAp8ICAgfCAgIHwgICBGcmVxIHJhbmdlOiAxLjAwMCB0byA2MDAwLjAwMCBNSHoKfCAgIHwg
ICB8ICAgR2FpbiByYW5nZSByZmljOiAwLjAgdG8gMC4wIHN0ZXAgMC4wIGRCCnwgICB8ICAgfCAg
IEdhaW4gcmFuZ2UgZHNhOiAwLjAgdG8gMC4wIHN0ZXAgMC4wIGRCCnwgICB8ICAgfCAgIEdhaW4g
cmFuZ2UgYW1wOiAwLjAgdG8gMC4wIHN0ZXAgMC4wIGRCCnwgICB8ICAgfCAgIEdhaW4gcmFuZ2Ug
YWxsOiAwLjAgdG8gNjUuMCBzdGVwIDAuNSBkQgp8ICAgfCAgIHwgICBCYW5kd2lkdGggcmFuZ2U6
IDIwMDAwMDAwLjAgdG8gMTAwMDAwMDAwLjAgc3RlcCAwLjAgSHoKfCAgIHwgICB8ICAgQ29ubmVj
dGlvbiBUeXBlOiBJUQp8ICAgfCAgIHwgICBVc2VzIExPIG9mZnNldDogTm8KfCAgICAgX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KfCAgICAvCnwg
ICB8ICAgICAgIFJYIERib2FyZDogMC9SYWRpbyMwCnwgICB8ICAgICBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp8ICAgfCAgICAvCnwgICB8ICAg
fCAgICAgICBSWCBGcm9udGVuZDogMAp8ICAgfCAgIHwgICBOYW1lOiBNYWduZXNpdW0KfCAgIHwg
ICB8ICAgQW50ZW5uYXM6IFRYL1JYLCBSWDIsIENBTCwgTE9DQUwKfCAgIHwgICB8ICAgRnJlcSBy
YW5nZTogMS4wMDAgdG8gNjAwMC4wMDAgTUh6CnwgICB8ICAgfCAgIEdhaW4gcmFuZ2UgcmZpYzog
MC4wIHRvIDAuMCBzdGVwIDAuMCBkQgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGRzYTogMC4wIHRv
IDAuMCBzdGVwIDAuMCBkQgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGFtcDogMC4wIHRvIDAuMCBz
dGVwIDAuMCBkQgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGFsbDogMC4wIHRvIDc1LjAgc3RlcCAw
LjUgZEIKfCAgIHwgICB8ICAgQmFuZHdpZHRoIHJhbmdlOiAyMDAwMDAwMC4wIHRvIDEwMDAwMDAw
MC4wIHN0ZXAgMC4wIEh6CnwgICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEKfCAgIHwgICB8
ICAgVXNlcyBMTyBvZmZzZXQ6IE5vCnwgICB8ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwp8ICAgfCAgICAvCnwgICB8ICAgfCAgICAgICBS
WCBGcm9udGVuZDogMQp8ICAgfCAgIHwgICBOYW1lOiBNYWduZXNpdW0KfCAgIHwgICB8ICAgQW50
ZW5uYXM6IFRYL1JYLCBSWDIsIENBTCwgTE9DQUwKfCAgIHwgICB8ICAgRnJlcSByYW5nZTogMS4w
MDAgdG8gNjAwMC4wMDAgTUh6CnwgICB8ICAgfCAgIEdhaW4gcmFuZ2UgcmZpYzogMC4wIHRvIDAu
MCBzdGVwIDAuMCBkQgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGRzYTogMC4wIHRvIDAuMCBzdGVw
IDAuMCBkQgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGFtcDogMC4wIHRvIDAuMCBzdGVwIDAuMCBk
Qgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGFsbDogMC4wIHRvIDc1LjAgc3RlcCAwLjUgZEIKfCAg
IHwgICB8ICAgQmFuZHdpZHRoIHJhbmdlOiAyMDAwMDAwMC4wIHRvIDEwMDAwMDAwMC4wIHN0ZXAg
MC4wIEh6CnwgICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEKfCAgIHwgICB8ICAgVXNlcyBM
TyBvZmZzZXQ6IE5vCnwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCnwgICAgLwp8ICAgfCAgICAgICBUWCBEYm9hcmQ6IDAvUmFkaW8jMQp8
ICAgfCAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KfCAgIHwgICAgLwp8ICAgfCAgIHwgICAgICAgVFggRnJvbnRlbmQ6IDAKfCAgIHwgICB8
ICAgTmFtZTogTWFnbmVzaXVtCnwgICB8ICAgfCAgIEFudGVubmFzOiBUWC9SWAp8ICAgfCAgIHwg
ICBGcmVxIHJhbmdlOiAxLjAwMCB0byA2MDAwLjAwMCBNSHoKfCAgIHwgICB8ICAgR2FpbiByYW5n
ZSByZmljOiAwLjAgdG8gMC4wIHN0ZXAgMC4wIGRCCnwgICB8ICAgfCAgIEdhaW4gcmFuZ2UgZHNh
OiAwLjAgdG8gMC4wIHN0ZXAgMC4wIGRCCnwgICB8ICAgfCAgIEdhaW4gcmFuZ2UgYW1wOiAwLjAg
dG8gMC4wIHN0ZXAgMC4wIGRCCnwgICB8ICAgfCAgIEdhaW4gcmFuZ2UgYWxsOiAwLjAgdG8gNjUu
MCBzdGVwIDAuNSBkQgp8ICAgfCAgIHwgICBCYW5kd2lkdGggcmFuZ2U6IDIwMDAwMDAwLjAgdG8g
MTAwMDAwMDAwLjAgc3RlcCAwLjAgSHoKfCAgIHwgICB8ICAgQ29ubmVjdGlvbiBUeXBlOiBJUQp8
ICAgfCAgIHwgICBVc2VzIExPIG9mZnNldDogTm8KfCAgIHwgICAgIF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnwgICB8ICAgIC8KfCAgIHwgICB8
ICAgICAgIFRYIEZyb250ZW5kOiAxCnwgICB8ICAgfCAgIE5hbWU6IE1hZ25lc2l1bQp8ICAgfCAg
IHwgICBBbnRlbm5hczogVFgvUlgKfCAgIHwgICB8ICAgRnJlcSByYW5nZTogMS4wMDAgdG8gNjAw
MC4wMDAgTUh6CnwgICB8ICAgfCAgIEdhaW4gcmFuZ2UgcmZpYzogMC4wIHRvIDAuMCBzdGVwIDAu
MCBkQgp8ICAgfCAgIHwgICBHYWluIHJhbmdlIGRzYTogMC4wIHRvIDAuMCBzdGVwIDAuMCBkQgp8
ICAgfCAgIHwgICBHYWluIHJhbmdlIGFtcDogMC4wIHRvIDAuMCBzdGVwIDAuMCBkQgp8ICAgfCAg
IHwgICBHYWluIHJhbmdlIGFsbDogMC4wIHRvIDY1LjAgc3RlcCAwLjUgZEIKfCAgIHwgICB8ICAg
QmFuZHdpZHRoIHJhbmdlOiAyMDAwMDAwMC4wIHRvIDEwMDAwMDAwMC4wIHN0ZXAgMC4wIEh6Cnwg
ICB8ICAgfCAgIENvbm5lY3Rpb24gVHlwZTogSVEKfCAgIHwgICB8ICAgVXNlcyBMTyBvZmZzZXQ6
IE5vCnwgICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnwgICAgLwp8ICAgfCAgICAgICBSWCBEYm9hcmQ6IDAvUmFkaW8jMQp8ICAgfCAgICAg
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KfCAg
IHwgICAgLwp8ICAgfCAgIHwgICAgICAgUlggRnJvbnRlbmQ6IDAKfCAgIHwgICB8ICAgTmFtZTog
TWFnbmVzaXVtCnwgICB8ICAgfCAgIEFudGVubmFzOiBUWC9SWCwgUlgyLCBDQUwsIExPQ0FMCnwg
ICB8ICAgfCAgIEZyZXEgcmFuZ2U6IDEuMDAwIHRvIDYwMDAuMDAwIE1Iegp8ICAgfCAgIHwgICBH
YWluIHJhbmdlIHJmaWM6IDAuMCB0byAwLjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiBy
YW5nZSBkc2E6IDAuMCB0byAwLjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBh
bXA6IDAuMCB0byAwLjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBhbGw6IDAu
MCB0byA3NS4wIHN0ZXAgMC41IGRCCnwgICB8ICAgfCAgIEJhbmR3aWR0aCByYW5nZTogMjAwMDAw
MDAuMCB0byAxMDAwMDAwMDAuMCBzdGVwIDAuMCBIegp8ICAgfCAgIHwgICBDb25uZWN0aW9uIFR5
cGU6IElRCnwgICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBObwp8ICAgfCAgICAgX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KfCAgIHwgICAgLwp8
ICAgfCAgIHwgICAgICAgUlggRnJvbnRlbmQ6IDEKfCAgIHwgICB8ICAgTmFtZTogTWFnbmVzaXVt
CnwgICB8ICAgfCAgIEFudGVubmFzOiBUWC9SWCwgUlgyLCBDQUwsIExPQ0FMCnwgICB8ICAgfCAg
IEZyZXEgcmFuZ2U6IDEuMDAwIHRvIDYwMDAuMDAwIE1Iegp8ICAgfCAgIHwgICBHYWluIHJhbmdl
IHJmaWM6IDAuMCB0byAwLjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBkc2E6
IDAuMCB0byAwLjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBhbXA6IDAuMCB0
byAwLjAgc3RlcCAwLjAgZEIKfCAgIHwgICB8ICAgR2FpbiByYW5nZSBhbGw6IDAuMCB0byA3NS4w
IHN0ZXAgMC41IGRCCnwgICB8ICAgfCAgIEJhbmR3aWR0aCByYW5nZTogMjAwMDAwMDAuMCB0byAx
MDAwMDAwMDAuMCBzdGVwIDAuMCBIegp8ICAgfCAgIHwgICBDb25uZWN0aW9uIFR5cGU6IElRCnwg
ICB8ICAgfCAgIFVzZXMgTE8gb2Zmc2V0OiBObwoKYWRAYm0tc3VwZXIxMS1pbnRlbDp+L2hvdXNo
YW5nJCA=
--000000000000ea2c840627d317c0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000ea2c840627d317c0--
