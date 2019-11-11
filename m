Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7715EF763F
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 15:21:18 +0100 (CET)
Received: from [::1] (port=41554 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUAZA-0004BE-Re; Mon, 11 Nov 2019 09:21:16 -0500
Received: from mail-qt1-f180.google.com ([209.85.160.180]:39259)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iUAZ7-00045b-Hr
 for USRP-users@lists.ettus.com; Mon, 11 Nov 2019 09:21:13 -0500
Received: by mail-qt1-f180.google.com with SMTP id t8so15837038qtc.6
 for <USRP-users@lists.ettus.com>; Mon, 11 Nov 2019 06:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=g3kwnCBVE/WRQZHjXHWL+8un2RvW7wkSEuU4io7K9sY=;
 b=PPpxN+xyuKnJuU2xkZoP9ej+oskDxS2OT0tXZDZ/e5BDEkOtUf4C2Z8CPgiKdO/Vie
 flYhNy32/Um2r6kpX5qUfVV3xqLgwN0ongV+CIppf/ar8yEIeCAeE5n1TNrgMH684HRX
 NqV99iSTe7rUNY5Wo3szwfonimqv0ZXrRFbQSNkKB0eHXcWvG2P4jzsQruOY1HP3QxqY
 aQ1gBKB3OT0MgPNsSSyzHHwalM1KRIc+pETt9bt/brukRV3JjyelUrQK7Vc8YR+QLVXN
 xwKRUnfhViinqPgPPPWRU4JS8LGfpQQf8Rl4WL8I70KTu5NLRHtUo+FY1m3ZqghgNvkn
 yWSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=g3kwnCBVE/WRQZHjXHWL+8un2RvW7wkSEuU4io7K9sY=;
 b=A7fX5gGj6Nu8Qyhc0rPU90OLQ1IUcdZ7VyDKQbfPNgGzRRhAv96+fDZGq1RIYckA2J
 GOT/+1Nvtg95ZpsvQr+NLE/7r+IriqyJ+/TGJsc5EYgG41fJbiLiu7FnaqlYK0b097DG
 nr/wpDifQNkz48XI3w+iFJ79M7KvUzCWVld2/dnSDoa07d3x104bfIDJNzVb9edQXqVV
 Onrv/ka6S3DmBwZ8Ppvai+0WumoUFBOjtcMN5ZT2kvD9kTuX7DBILR+hKS95jiRwpbje
 M3KzEJNPWouabnkaXiPAPvaL/fIK80Tvsk4lE2qZFuD9UjiOsZLzRPYT9wB3xafl7Jx4
 L0og==
X-Gm-Message-State: APjAAAUF1ykxKzlu3lH4+ZsowKO4l5UufphlJWSyaWYLb6Z8xpIJebC8
 Dpa/W0dwHJhV220v/NxG5CM=
X-Google-Smtp-Source: APXvYqzcsdrMrCZYC6+iRMRKD1RU7ln5PcLABP0ndmAzIn7E/z8pGTKSD3n6jC9kv63QpFB/+1NBAw==
X-Received: by 2002:ac8:2f4e:: with SMTP id k14mr26469682qta.357.1573482032966; 
 Mon, 11 Nov 2019 06:20:32 -0800 (PST)
Received: from [10.255.9.13]
 (CPE001145103080-CMf81d0fa05d80.cpe.net.cable.rogers.com. [99.246.132.253])
 by smtp.gmail.com with ESMTPSA id 187sm7913139qkk.103.2019.11.11.06.20.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Nov 2019 06:20:32 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Nov 2019 09:20:31 -0500
Message-Id: <E82B509C-A4D3-420B-9BCE-22DAF2177913@gmail.com>
References: <MAXPR0101MB161284FD3EDE2B5F745FE13A88740@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR0101MB161284FD3EDE2B5F745FE13A88740@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
To: Snehasish Kar <snehasish.cse@live.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Help in frequency shifting with USRP
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7687973219504881712=="
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


--===============7687973219504881712==
Content-Type: multipart/alternative; boundary=Apple-Mail-F5D2A0CE-6C76-412F-95F5-AEDDECF718FF
Content-Transfer-Encoding: 7bit


--Apple-Mail-F5D2A0CE-6C76-412F-95F5-AEDDECF718FF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This is more of a generic DSP question. It=E2=80=99s the sort of thing that f=
olks on the discuss-gnuradio list do all the time.=20



Sent from my iPhone

> On Nov 11, 2019, at 8:35 AM, Snehasish Kar via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello=20
>=20
> I tried capturing GSM 900 band at a sample rate of 25e6 centered at 947.4e=
6 and stored in a file. Then on the captured data I tried shifting 935.2e6 t=
o the center and perform a low pass filter samples out followed by a re-samp=
ler to get 200e3 samples out. But I think the spectrum shifting is not wroki=
ng as it should be I am following the following link for spectrum shifting h=
ttps://dsp.stackexchange.com/a/1993. I am using twinrx with 10gig sfp, UHD_3=
.13.1.0-0-unknown, ubuntu 16.04 and liquid dsp for signal processing.
>=20
> fft - How to shift the frequency spectrum? - Signal Processing Stack Excha=
nge
> Stack Exchange network consists of 175 Q&A communities including Stack Ove=
rflow, the largest, most trusted online community for developers to learn, s=
hare their knowledge, and build their careers.. Visit Stack Exchange
> dsp.stackexchange.com
> Please let me know, where I might be going wrong.
>=20
> BR
> Snehasish
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F5D2A0CE-6C76-412F-95F5-AEDDECF718FF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is more of a generic DSP question. It=E2=
=80=99s the sort of thing that folks on the discuss-gnuradio list do all the=
 time.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 11, 2019, at 8:3=
5 AM, Snehasish Kar via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hello <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I tried capturing GSM 900 band at a sample rate of 25e6 centered at 947.4e6 a=
nd stored in a file. Then on the captured data I tried shifting 935.2e6 to t=
he center and perform a low pass filter samples out followed by a re-sampler=
 to get 200e3 samples out. But
 I think the spectrum shifting is not wroking as it should be I am following=
 the following link for spectrum shifting
<a href=3D"https://dsp.stackexchange.com/a/1993" id=3D"LPlnk489535">https://=
dsp.stackexchange.com/a/1993</a>. I am using twinrx with 10gig sfp, UHD_3.13=
.1.0-0-unknown, ubuntu 16.04 and liquid dsp for signal processing.<br>
</div>
<div id=3D"LPBorder_GTaHR0cHM6Ly9kc3Auc3RhY2tleGNoYW5nZS5jb20vYS8xOTkz" clas=
s=3D"LPBorder863734" style=3D"width: 100%; margin-top: 16px; margin-bottom: 1=
6px; position: relative; max-width: 800px; min-width: 424px;" contenteditabl=
e=3D"false">
<table id=3D"LPContainer863734" role=3D"presentation" style=3D"padding: 12px=
 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; border=
-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td>
<div id=3D"LPImageContainer863734" style=3D"position: relative; margin-right=
: 12px; height: 160px; overflow: hidden;">
<a target=3D"_blank" id=3D"LPImageAnchor863734" href=3D"https://dsp.stackexc=
hange.com/a/1993"><img id=3D"LPThumbnailImageId863734" alt=3D"" style=3D"dis=
play: block;" width=3D"160" height=3D"160" src=3D"https://cdn.sstatic.net/Si=
tes/dsp/img/apple-touch-icon@2.png?v=3De0439310c223" data-unique-identifier=3D=
""></a></div>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle863734" style=3D"font-size: 21px; font-weight: 300; margin=
-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Ligh=
t&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&qu=
ot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor863734" href=3D"https://dsp.stackexcha=
nge.com/a/1993" style=3D"text-decoration: none; color:var(--themePrimary);">=
fft - How to shift the frequency spectrum? - Signal Processing Stack Exchang=
e</a></div>
<div id=3D"LPDescription863734" style=3D"font-size: 14px; max-height: 100px;=
 color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margin-b=
ottom: 12px; margin-right: 8px; overflow: hidden;">
Stack Exchange network consists of 175 Q&amp;A communities including Stack O=
verflow, the largest, most trusted online community for developers to learn,=
 share their knowledge, and build their careers.. Visit Stack Exchange</div>=

<div id=3D"LPMetadata863734" style=3D"font-size: 14px; font-weight: 400; col=
or: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot;S=
egoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
dsp.stackexchange.com</div>
</td>
</tr>
</tbody>
</table>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Please let me know, where I might be going wrong.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
BR</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Snehasish<br>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-F5D2A0CE-6C76-412F-95F5-AEDDECF718FF--


--===============7687973219504881712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7687973219504881712==--

