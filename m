Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBAC39C508
	for <lists+usrp-users@lfdr.de>; Sat,  5 Jun 2021 04:25:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DF8C384A61
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 22:25:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mHvjd3Vb";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 67962384662
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 22:24:56 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id u30so11301283qke.7
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 19:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=sqjTikNR21VcsOaNrQThTRW86b1OchV7EgpZBZqftmE=;
        b=mHvjd3VbcNIR6SzFTYghiFgIQbLfIp3ZsIWAW7F0z+wknL3oKIYt0R8vqyMA+ycBa8
         jM6dR1/xNNFAD+54hGbRA/F9UQkNalMB4M83E8yqCJGWzqrxjB76stiTly5nWdf1QJPr
         9WJIifFhEDzXNthxmcAYGBXF5g2ZP+Lh1umn1cdLgJlEGy2gdBI/qAVsS7v7p8aUAd5L
         8P28aywJv/syLpkCXWc8m1BPx22Bi+UJHtX6XoOCzfYGcRWKqFLWL/wbOvOX6vKXMUWB
         oti2zUbMOnWVixF6PX6uT0TwfwsTOOWmb6ipI2xHLk0YOaJP9cKIYdAfI9unvxqvcPDx
         xOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=sqjTikNR21VcsOaNrQThTRW86b1OchV7EgpZBZqftmE=;
        b=mM8RF/nj1u6AhZqf8NBQaezTa305ft/nRoYlo6oFBggIvLngXDi+AhNPbnuRwA+2SB
         UNIWH7s9h53TKSVOFCStiLCS4pTHxd0J6AK6ta4co184rYfisWXzZ71oNvLxl+Bm5ZOb
         VEt2EvC3p90+stXBYWzlnCelFmSXanc/GztJPo1+r8k42BINGYbH1N7wj+YvAHR9lHMK
         2Pni0UHh/7nXz6nKgIKnnpQBJ+/Z4meV35Fc6xpnvQtrLHnMxpbi4EzKe8dTEfz2HwIL
         EbK3fJhqlvMCixfZ7o8BZ0GiZozSvIBbL+q7Rr3ayRAq/GVh9omuCFMExm6Bz73pbE9M
         g8EQ==
X-Gm-Message-State: AOAM5318DS9iHWgCbe9NgkYwcjvclKtsZF0F4xwmrztK41fktKI84gHh
	e3HkuKrLouO6O+1ndDvvZdePdfXuAY0qQQ==
X-Google-Smtp-Source: ABdhPJyhOQLOignXRTYpP8h9oFwK/XmtPyVVN4xqLdiVdUo//xTjjlpyOYOQIgpUx8dhny1iYe/oZw==
X-Received: by 2002:ae9:f010:: with SMTP id l16mr7216188qkg.424.1622859895668;
        Fri, 04 Jun 2021 19:24:55 -0700 (PDT)
Received: from ?IPv6:2601:151:c000:a810:3071:5cd:962d:a778? ([2601:151:c000:a810:3071:5cd:962d:a778])
        by smtp.gmail.com with ESMTPSA id j25sm2995807qtp.86.2021.06.04.19.24.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 19:24:55 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <vhUULJNNQvMIZCjMd2fB2JqKJ476aCpqHHu7VM@lists.ettus.com>
Date: Fri, 4 Jun 2021 22:24:54 -0400
Message-Id: <0E2A8C82-7145-496F-AB29-6079021FB957@gmail.com>
References: <vhUULJNNQvMIZCjMd2fB2JqKJ476aCpqHHu7VM@lists.ettus.com>
To: jcasallas2019@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: S3E2FBM4W7XEONBK32UTVKXLDSXM3MFH
X-Message-ID-Hash: S3E2FBM4W7XEONBK32UTVKXLDSXM3MFH
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.0/RFNoC/gr-ettus/Fosphor locking up and not stable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S3E2FBM4W7XEONBK32UTVKXLDSXM3MFH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4405675778906940550=="


--===============4405675778906940550==
Content-Type: multipart/alternative; boundary=Apple-Mail-6DA74944-4D8A-4397-9368-789E5D805DAA
Content-Transfer-Encoding: 7bit


--Apple-Mail-6DA74944-4D8A-4397-9368-789E5D805DAA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I was the OP for this i think.=20
No-one from Ettus responded, so I did some more tweaking on my own.=20
I had DRAMATICALLY better results when i sent the histogram and waterfall ou=
tputs from the primary flowgraph to zmq pub sockets and then made a separate=
 flowgraph that took the stream from zmq sub sockets into the  fosphor displ=
ay block. I left the GUI controls for frequency and gain in the primary grap=
h too. That=E2=80=99s shown to be pretty good for me. The only thing is, run=
 the fosphor display flowgraph first, then adjust the size to what you want B=
EFORE running the primary flowgraph. Once the display flowgraph is receiving=
 data, resizing will be nearly impossible.=20

Hope this helps.=20


<end transmission>

> On Jun 4, 2021, at 17:31, jcasallas2019@gmail.com wrote:
> =EF=BB=BF
> Hi all.
>=20
>=20
>=20
> I am having the same issue. Does anyone have any idea how to make fosphor G=
UI app more responsive at high data rates? let=E2=80=99s say 25Msps or highe=
r.
>=20
> Thanks in advance.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-6DA74944-4D8A-4397-9368-789E5D805DAA
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">I was the OP for this i think=
.&nbsp;</div><div dir=3D"ltr">No-one from Ettus responded, so I did some mor=
e tweaking on my own.&nbsp;</div><div dir=3D"ltr">I had DRAMATICALLY better r=
esults when i sent the histogram and waterfall outputs from the primary flow=
graph to zmq pub sockets and then made a separate flowgraph that took the st=
ream from zmq sub sockets into the &nbsp;fosphor display block. I left the G=
UI controls for frequency and gain in the primary graph too. That=E2=80=99s s=
hown to be pretty good for me. The only thing is, run the fosphor display fl=
owgraph first, then adjust the size to what you want BEFORE running the prim=
ary flowgraph. Once the display flowgraph is receiving data, resizing will b=
e nearly impossible.&nbsp;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">=
Hope this helps.&nbsp;</div><div dir=3D"ltr"><br><br><div dir=3D"ltr">&lt;<s=
pan class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26=
, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.2=
30469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end=
 transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite"=
>On Jun 4, 2021, at 17:31, jcasallas2019@gmail.com wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi all.</p><p=
><br></p><p>I am having the same issue. Does anyone have any idea how to mak=
e fosphor GUI app more responsive at high data rates? let=E2=80=99s say 25Ms=
ps or higher. </p><p>Thanks in advance. </p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-6DA74944-4D8A-4397-9368-789E5D805DAA--

--===============4405675778906940550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4405675778906940550==--
