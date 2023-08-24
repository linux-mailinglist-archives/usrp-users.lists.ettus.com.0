Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09148787149
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 16:16:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E515384B08
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 10:16:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692886602; bh=kdYwNd4xiiZg3uuj0SYRvxSRasNfCilEsT4MetH6Qho=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ixCwpMonP4CeYs78Ccd8oVGPqe4JiEFi2Z3JnAa2yeGnZy4c8kCAF/QPsV8yd5ejq
	 k6UvJ0gFevOS/uCYlInRFx5mwnXpymW3zHFQJeAWjSdtH4Cgbt4XuKKqWgRx5NjR7N
	 HsjtUhnxULOGjbWjlUw7OWA8nAkQ6HhYRa5TYwxrfkt2uM3fL54Rez0pHWZ1j3PvSR
	 5U7Vpyolqvs/MreksYqYR3aN9p6kRtsAMGqNkfRHU7bysgzAIJ6Rhwq4EXIJBXeyew
	 AINk9cvbq/b4lkldMC3dIgeNAPbXEVgwSLbmQLoAKtt2kb9wbs4TWFmZNYxWYNdKVw
	 vO48vt9yxoQ2g==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D7EE938095D
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 10:16:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="a22XQWA6";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-4fe27849e6aso10489989e87.1
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 07:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1692886565; x=1693491365;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fRdbtA60rR3HSKNxexN6Fo0/6Ey7DsVOQELASPfybV8=;
        b=a22XQWA6bynj0HYzxVyldHZn7XKDMYeoSv8r45RYGGvnk6pViPv+HDNpPj4c6XnuDz
         o0nCXb/PALuCKBXmjlzAE9LZg+9lp2irFHyEyCZhZUhbQNavrJx/J4fnZVajIBTJlx5L
         aLGFUSoPwBS1s2+4Tzqf16fKmj8JdDizcm+cvQfqfmEBNMZUqveWFA9+nT0lgvno+qnf
         eYkvb9YZd9DWE2qq+YvDZU3Vttqp3i21rDfvvr0VXgWMwqXFGjfrBvgkChZ+ChATKxVU
         esTlmT6GMPrJj21yikheyBE5dwWbr1bGnSFvKjC7gZXhKMig49JE5jzRVbfHdG8843pJ
         ZWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692886565; x=1693491365;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fRdbtA60rR3HSKNxexN6Fo0/6Ey7DsVOQELASPfybV8=;
        b=gpZGrP8z14kNQPjD2iO3aRO2a1yT/L9s0pks7r59E+cZ8cYMlIkvvSzcO89Zdjz9N/
         l1vLEOUP6QeSj/moBunMVTXsRfPuDgMC/FwU/UONYb9NTbfXMNgsN8vd8IBG9joCPWT9
         vLAXOSamnBL4wfJtyKXa4Lk6soEyaA8P6SXWk2PiZc0vq9Rc//J/UXJilSYgC7DmHJo6
         ECZqZu+7gahJr4Wten1a0QvhKLfTgFF+gCT3UZHdkggC+uu+fjcQX4Xnu7M1IJiXmrfK
         Mf/lfdiGcqRF0DhmZBIU5ij/6daw/V628BkEYZx/dU20tHd8xZBoKPP4pWmZvkgZ7IGn
         wUNg==
X-Gm-Message-State: AOJu0YwnZmkuII67WTRcbqEiJm+7bCtQhCbY4I1D/r+iB/y+59U3eCZR
	KHPvElZgwoao1prXuTlFsJA7I8fdFTMb24rS+SBrNg==
X-Google-Smtp-Source: AGHT+IHNBNcKEJ0DhSXkCqNKcyL64a7Z8I/Ular9QeMp0v1dpkLULNMWdZknZxenDI8/qNHpWl/LJ9Wy0uW9m6NGQrw=
X-Received: by 2002:a05:6512:3ca3:b0:4fe:3364:6c20 with SMTP id
 h35-20020a0565123ca300b004fe33646c20mr11807602lfv.16.1692886565118; Thu, 24
 Aug 2023 07:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <BN0P110MB1014A7659819EC201F687ED7D41FA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
 <BN0P110MB1014DC656105EF352DC4F281D41FA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
 <CAEXYVK6RjXv=aWtmTxMdOShZ+FNxNcOmYneRmSkJ-9GRh-LJqw@mail.gmail.com> <BN0P110MB10144C510EBFD9AC2016BA29D41CA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB10144C510EBFD9AC2016BA29D41CA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
Date: Thu, 24 Aug 2023 10:15:53 -0400
Message-ID: <CAB__hTSYcnrXKXcY4=K4NrpV37Q6ojTmPousFaU84qocbU5jHA@mail.gmail.com>
To: Andrew Fountain <afountain@brsc.com>
Message-ID-Hash: 3CINQ3WXDH55SHSACRFOEHGI3MUFRALC
X-Message-ID-Hash: 3CINQ3WXDH55SHSACRFOEHGI3MUFRALC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4 segmentation fault on creating rx_streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3CINQ3WXDH55SHSACRFOEHGI3MUFRALC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5161678773871328247=="

--===============5161678773871328247==
Content-Type: multipart/alternative; boundary="0000000000005c5a0a0603abde58"

--0000000000005c5a0a0603abde58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,
I see what you mean regarding the documentation comment about one streamer
only.  But, this doesn't make sense to me. I wonder if the documentation is
in error. I always use multiple rx and tx streamers.  However, I don't
often destroy and recreate them on the fly.  Anyway, it was my
understanding that the true restriction is that you can only have one
rx_streamer (or tx_streamer) for a given channel when using a multi_usrp
object.  So, if you have a 4 channel device you should be able to have one
rx_streamer using channels 0,1 and another using channels 2,3.
Rob


On Wed, Aug 23, 2023 at 10:17=E2=80=AFAM Andrew Fountain via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey Brian,
>
> Thanks for the input. Yeah making the rx_streamers at the beginning and
> keeping them around resolves the issue in that test program -- no
> segfaults after 10000 Rx iterations total from the two threads. Makes
> sense; if the issue is happening in rx_streamer creation, then we should =
do
> that as little as possible. We'd just have to re-create the streamers whe=
n
> we re-tune or some such.
>
> I was perusing the docs and it also seems like there is also a more
> fundamental misunderstanding on my end. It looks like there can always on=
ly
> be one RX streamer at a time per multi_usrp object as per this little not=
e
> in the docs:
> https://files.ettus.com/manual/classuhd_1_1device.html#a0a9e36f353dcce36b=
4dd8d394c8813e3 unless
> I misunderstand. Curses! That seems to indicate that I am relying on
> undefined behavior in either case, even though everything seems to now wo=
rk
> as expected.
> Ideally the UHD would have complained that I was doing that! Ah well.
>
> Time to re-architecture some stuff! =F0=9F=99=82
>
> Thank you,
> Andrew Fountain
> Black River Systems Co., Inc.
> 162 Genesee Street
> Utica, NY 13502
>
>
> ------------------------------
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Tuesday, August 22, 2023 4:22 PM
> *To:* Andrew Fountain <afountain@brsc.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: UHD4 segmentation fault on creating
> rx_streamer
>
> You don't often get email from bpadalino@gmail.com. Learn why this is
> important <https://aka.ms/LearnAboutSenderIdentification>
> On Tue, Aug 22, 2023 at 4:16=E2=80=AFPM Andrew Fountain via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Here is the output of that program with a debug build of UHD v4.4.0.0 . I=
t
> seems to point out this line
> https://github.com/EttusResearch/uhd/blob/UHD-4.4/host/lib/rfnoc/rfnoc_gr=
aph.cpp#L393
> <https://usg02.safelinks.protection.office365.us/?url=3Dhttps%3A%2F%2Fgit=
hub.com%2FEttusResearch%2Fuhd%2Fblob%2FUHD-4.4%2Fhost%2Flib%2Frfnoc%2Frfnoc=
_graph.cpp%23L393&data=3D05%7C01%7Cafountain%40brsc.com%7C080e13d2bdc743f6f=
ddd08dba34d96b2%7C5ed13283606a46b1bd4f758a462df882%7C1%7C0%7C63828332586070=
2606%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DDgXydmUT8Sx3Ut50BrPNkaBRYTbXTY=
O2O80zpAu%2F%2Fy4%3D&reserved=3D0>
>
> It doesn't seem to be some weird threading issue related to getting
> multiple rx_streamers at the same time; adding a lock around that access =
to
> that get_rx_stream function still yields segmentation faults at the same
> point in get_rx_stream.
>
>
> Are you sure?
>
> Can you move the streamer creation to be outside of the for loop and just
> iterate on the stream args, issue command, and recv()?
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005c5a0a0603abde58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Andrew,</div><div>I see what you mean regarding th=
e documentation comment about one streamer only.=C2=A0 But, this doesn&#39;=
t make sense to me. I wonder if the documentation is in error. I always use=
 multiple rx and tx streamers.=C2=A0 However, I don&#39;t often destroy and=
 recreate them on the fly.=C2=A0 Anyway, it was my understanding that the t=
rue restriction is that you can only have one rx_streamer (or tx_streamer) =
for a given channel when using a multi_usrp object.=C2=A0 So, if you have a=
 4 channel device you should be able to have one rx_streamer using channels=
 0,1 and another using channels 2,3.</div><div>Rob</div><div><br></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Au=
g 23, 2023 at 10:17=E2=80=AFAM Andrew Fountain via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg-4113360566820098488">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hey Brian,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks for the input. Yeah <span style=3D"background-color:rgb(255,255,255)=
;display:inline">
making the rx_streamers at the beginning and keeping them around=C2=A0</spa=
n>resolves the issue in that test program -- no segfaults after 10000 Rx it=
erations total from the two threads. Makes sense; if the issue is happening=
 in rx_streamer creation, then we should
 do that as little as possible. We&#39;d just have to re-create the streame=
rs when we re-tune or some such.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I was perusing the docs and it also seems like there is also a more fundame=
ntal misunderstanding on my end. It looks like there can always only be one=
 RX streamer at a time per multi_usrp object as per this little note in the=
 docs:=C2=A0<a href=3D"https://files.ettus.com/manual/classuhd_1_1device.ht=
ml#a0a9e36f353dcce36b4dd8d394c8813e3" id=3D"m_-4113360566820098488LPlnk2159=
85" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1device.htm=
l#a0a9e36f353dcce36b4dd8d394c8813e3</a>=C2=A0unless
 I misunderstand. Curses! That seems to indicate that I am relying on undef=
ined behavior in either case, even though everything seems to now work as e=
xpected.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Ideally the UHD would have complained that I was doing that! Ah well.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Time to re-architecture some stuff!=C2=A0<span id=3D"m_-4113360566820098488=
=F0=9F=99=82">=F0=9F=99=82</span></div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-4113360566820098488Signature">
<div>
<div></div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<p style=3D"margin:0in;font-size:11pt;font-family:Calibri,sans-serif"><span=
 style=3D"font-size:12pt;font-family:Calibri,Helvetica,sans-serif">Thank yo=
u,<br>
</span><span style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12=
pt">Andrew Fountain<br>
</span><span style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12=
pt">Black River Systems Co., Inc.<br>
</span><span style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12=
pt">162 Genesee Street<br>
</span><span style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12=
pt">Utica, NY 13502=C2=A0</span></p>
<br>
</div>
</div>
</div>
</div>
<div id=3D"m_-4113360566820098488appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4113360566820098488divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt;color:rgb(0,0,0)"><b>From:</b> =
Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank"=
>bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, August 22, 2023 4:22 PM<br>
<b>To:</b> Andrew Fountain &lt;<a href=3D"mailto:afountain@brsc.com" target=
=3D"_blank">afountain@brsc.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b>=C2=A0Re: [USRP-users] Re: UHD4 segmentation fault on creati=
ng rx_streamer</font>
<div>=C2=A0</div>
</div>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"border:0px;display:table;width:100%;table-layout:fixed;=
float:none">
<tbody style=3D"display:block">
<tr>
<td valign=3D"middle" width=3D"1px" cellpadding=3D"7px 2px 7px 2px" style=
=3D"padding:7px 2px;background-color:rgb(166,166,166)">
</td>
<td valign=3D"middle" width=3D"100%" cellpadding=3D"7px 5px 7px 15px" style=
=3D"width:100%;padding:7px 5px 7px 15px;font-family:wf_segoe-ui_normal,&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:12p=
x;font-weight:normal;text-align:left;color:rgb(33,33,33);background-color:r=
gb(234,234,234)">
<div>You don&#39;t often get email from <a href=3D"mailto:bpadalino@gmail.c=
om" target=3D"_blank">bpadalino@gmail.com</a>. <a href=3D"https://aka.ms/Le=
arnAboutSenderIdentification" id=3D"m_-4113360566820098488OWAc187cd3b-0a39-=
f1b0-34f1-12a6ab6b3555" target=3D"_blank">
Learn why this is important</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" cellpadding=3D"7px 5px =
7px 5px" style=3D"width:75px;padding:7px 5px;font-family:wf_segoe-ui_normal=
,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-siz=
e:12px;font-weight:normal;text-align:left;color:rgb(33,33,33);background-co=
lor:rgb(234,234,234)">
</td>
</tr>
</tbody>
</table>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Tue, Aug 22, 2023 at 4:16=E2=80=AFPM Andrew Fountain vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"m_-411=
3360566820098488OWA92d5c8cb-dc42-ca12-a9ed-4b1a777f8e37" target=3D"_blank">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"font-size:12pt;margin:0px;color:black;background-color:rgb(25=
5,255,255)">
Here is the output of that program with a debug build of UHD v4.4.0.0 . It =
seems to point out this line=C2=A0<a href=3D"https://usg02.safelinks.protec=
tion.office365.us/?url=3Dhttps%3A%2F%2Fgithub.com%2FEttusResearch%2Fuhd%2Fb=
lob%2FUHD-4.4%2Fhost%2Flib%2Frfnoc%2Frfnoc_graph.cpp%23L393&amp;data=3D05%7=
C01%7Cafountain%40brsc.com%7C080e13d2bdc743f6fddd08dba34d96b2%7C5ed13283606=
a46b1bd4f758a462df882%7C1%7C0%7C638283325860702606%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7=
C%7C%7C&amp;sdata=3DDgXydmUT8Sx3Ut50BrPNkaBRYTbXTYO2O80zpAu%2F%2Fy4%3D&amp;=
reserved=3D0" id=3D"m_-4113360566820098488OWAc9562506-2b65-bc5a-9c84-79d621=
30cbc1" style=3D"margin:0px" target=3D"_blank">https://github.com/EttusRese=
arch/uhd/blob/UHD-4.4/host/lib/rfnoc/rfnoc_graph.cpp#L393</a><br>
</div>
<div style=3D"font-size:12pt;margin:0px;color:black;background-color:rgb(25=
5,255,255)">
<br>
It doesn&#39;t seem to be some weird threading issue related to getting mul=
tiple rx_streamers at the same time; adding a lock around that access to th=
at get_rx_stream function still yields segmentation faults at the same poin=
t in get_rx_stream.</div>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Are you sure?</div>
<div><br>
</div>
<div>Can you move the streamer creation to be outside of the for loop and j=
ust iterate on the stream args, issue command, and recv()?</div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--0000000000005c5a0a0603abde58--

--===============5161678773871328247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5161678773871328247==--
