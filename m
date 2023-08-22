Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B765784B50
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 22:23:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6B80384B3B
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 16:23:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692735814; bh=i+fnhznZ0xYePwUSte9+0FM7zycUG6iuJOPhYQG2eQc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=o2YZIa9wczGtCI0L25GzN/kup4hAyCkdRgW/xaV4HCMSMDCakbqWXKAs63WSHJfyN
	 AHJoVw5LPLW7APs56r/cKFoYBj7psA2aqWE1BhYxBRVrHYnDPaBREUIRPUkDczwFiz
	 769EYRckH9aHZ+O9pdTeiUzpLKE+WTY1NP6w7UyLPSHzNc42XTTRzfTf3lGqp0lSQ8
	 tcAN3eg2mTeuHdeYIPLb4mOaxJ8VNQhAH5RgwpaVfYnbBg+LRIjJW87aQ1afBZBGtK
	 G0haCG6d9cVX7vJdWMVpH2h8dYbYaNhbuyYeV9JoqseOI9xUoCeOri9KjBqKOXDmtb
	 Nw86pjKGRzqkA==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 10810384AE2
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 16:23:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AaykiTcD";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-99c1d03e124so620506066b.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 13:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692735782; x=1693340582;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NHhlv2alpZKu56Ml+1Zslh9OVCR8OEtDbRE7925kOCs=;
        b=AaykiTcDpOx9ok8V9vtbLwDhUR35pkr53+pgbF3X6AP6Kr/aEk3JT5LMIm4FoPXAg3
         67CXDmHfyNt+jKEZYmzPc5vvLsRDr6orKwdxbKe1X0JJ6MPmGG668jfc2msi98sROdiX
         4BRAkCOjTn26kIYhjZYgcLNFbKQieez6SG7Ey+5TnnRIvemUkCKk9TuQhtnD+NdGSVRa
         zB4mu+yEUDo0kfYxvT/CxRUUJTjrm4/Oydl1mc5jofKHMTStUZntTNzbMvd/2J0kX5K2
         XaL3hvP4QPKT/geXY3VcMZJt5krbU2debpJZCzRlC0o6sAmWyLGtNWasosFijEe4KAjG
         ikuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692735782; x=1693340582;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NHhlv2alpZKu56Ml+1Zslh9OVCR8OEtDbRE7925kOCs=;
        b=WXSQToQxbIVU5nL4QRCKM3sQfrhWEVAX54eoVwK8H74Su++NXRyY6/CHUQOFhozB9V
         nxi6qic0G4ZO6U4hDSGYeMmv/4MuQbHDesvkUlPy14CkRbcOyIwFqfqJr8nsw1Um5Dpo
         riizyABJgUJse4NvMde5jM+vke/1lO5w0LR0ozhsu2zqxl8TjyippfzJHwN/CMdX6sHM
         Np6GsGYl9hyphjKItiyo3VCSY8NhcC2Hg2b/5BlWqHvIyP5yB8f+4etYUEAxgaYEGBRo
         cLQdoZeYG4OgavM2DfBXAedIuowpXf4kLKLpnHoU3qnAUiAfPw6gv2DwS4AqSmBYGhIU
         lsag==
X-Gm-Message-State: AOJu0Yx4I+/kioQ9q3ldNlgsHIUzcTyllaaqO/LLZT3K2P3vZsHBm+6G
	g8H6hkVMu50op4pHqqq1VJzNego4kTx+AOdhywbYs7Y4
X-Google-Smtp-Source: AGHT+IGsIMR+nlHqgOKDRrkXXX6G18XTRkqb6ZYib756cBTxjU2WjLWxH7+Wwcs6FjiF5ceQCR0Ka+/qGBhAg+HAP3Q=
X-Received: by 2002:a17:906:209b:b0:9a1:c225:1cea with SMTP id
 27-20020a170906209b00b009a1c2251ceamr1917231ejq.65.1692735781752; Tue, 22 Aug
 2023 13:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <BN0P110MB1014A7659819EC201F687ED7D41FA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
 <BN0P110MB1014DC656105EF352DC4F281D41FA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB1014DC656105EF352DC4F281D41FA@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 22 Aug 2023 16:22:50 -0400
Message-ID: <CAEXYVK6RjXv=aWtmTxMdOShZ+FNxNcOmYneRmSkJ-9GRh-LJqw@mail.gmail.com>
To: Andrew Fountain <afountain@brsc.com>
Message-ID-Hash: C6IKF74SBGGNNZBRP6BLDKYLDGUYSVHP
X-Message-ID-Hash: C6IKF74SBGGNNZBRP6BLDKYLDGUYSVHP
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4 segmentation fault on creating rx_streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6IKF74SBGGNNZBRP6BLDKYLDGUYSVHP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0905891244014686035=="

--===============0905891244014686035==
Content-Type: multipart/alternative; boundary="000000000000f85392060388c25b"

--000000000000f85392060388c25b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 22, 2023 at 4:16=E2=80=AFPM Andrew Fountain via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Here is the output of that program with a debug build of UHD v4.4.0.0 . I=
t
> seems to point out this line
> https://github.com/EttusResearch/uhd/blob/UHD-4.4/host/lib/rfnoc/rfnoc_gr=
aph.cpp#L393
> <https://usg02.safelinks.protection.office365.us/?url=3Dhttps%3A%2F%2Fgit=
hub.com%2FEttusResearch%2Fuhd%2Fblob%2FUHD-4.4%2Fhost%2Flib%2Frfnoc%2Frfnoc=
_graph.cpp%23L393&data=3D05%7C01%7Cafountain%40brsc.com%7C88b8030b4bc04546d=
a0b08dba34c5916%7C5ed13283606a46b1bd4f758a462df882%7C1%7C0%7C63828332052634=
7379%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3DslguBgDjdkkbg3%2BVIUXeNlVKwFeM=
Kl8%2BeTz46RzONWs%3D&reserved=3D0>
>
> It doesn't seem to be some weird threading issue related to getting
> multiple rx_streamers at the same time; adding a lock around that access =
to
> that get_rx_stream function still yields segmentation faults at the same
> point in get_rx_stream.
>

Are you sure?

Can you move the streamer creation to be outside of the for loop and just
iterate on the stream args, issue command, and recv()?

Brian

--000000000000f85392060388c25b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Aug 22, 2023 at 4:16=E2=80=AFPM A=
ndrew Fountain via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg=
-8584922236608742424">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"font-size:12pt;margin:0px;color:black;background-color:rgb(25=
5,255,255)">
Here is the output of that program with a debug build of UHD v4.4.0.0 . It =
seems to point out this line=C2=A0<a href=3D"https://usg02.safelinks.protec=
tion.office365.us/?url=3Dhttps%3A%2F%2Fgithub.com%2FEttusResearch%2Fuhd%2Fb=
lob%2FUHD-4.4%2Fhost%2Flib%2Frfnoc%2Frfnoc_graph.cpp%23L393&amp;data=3D05%7=
C01%7Cafountain%40brsc.com%7C88b8030b4bc04546da0b08dba34c5916%7C5ed13283606=
a46b1bd4f758a462df882%7C1%7C0%7C638283320526347379%7CUnknown%7CTWFpbGZsb3d8=
eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7=
C%7C%7C&amp;sdata=3DslguBgDjdkkbg3%2BVIUXeNlVKwFeMKl8%2BeTz46RzONWs%3D&amp;=
reserved=3D0" style=3D"margin:0px" id=3D"m_-8584922236608742424OWAbc3e4967-=
ce94-2eac-2f25-a09f314865cd" target=3D"_blank">https://github.com/EttusRese=
arch/uhd/blob/UHD-4.4/host/lib/rfnoc/rfnoc_graph.cpp#L393</a><br>
</div>
<div style=3D"font-size:12pt;margin:0px;color:black;background-color:rgb(25=
5,255,255)">
<br>
It doesn&#39;t seem to be some weird threading issue related to getting mul=
tiple rx_streamers at the same time; adding a lock around that access to th=
at get_rx_stream function still yields segmentation faults at the same poin=
t in get_rx_stream.</div></div></div></div></blockquote><div><br></div><div=
>Are you sure?</div><div><br></div><div>Can you move the streamer creation =
to be outside of the for loop and just iterate on the stream args, issue co=
mmand, and recv()?</div><div><br></div><div>Brian</div></div></div>

--000000000000f85392060388c25b--

--===============0905891244014686035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0905891244014686035==--
