Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C566F3C3583
	for <lists+usrp-users@lfdr.de>; Sat, 10 Jul 2021 18:25:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5541F3843FE
	for <lists+usrp-users@lfdr.de>; Sat, 10 Jul 2021 12:25:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JVKuYutr";
	dkim-atps=neutral
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id EC837384202
	for <usrp-users@lists.ettus.com>; Sat, 10 Jul 2021 12:24:23 -0400 (EDT)
Received: by mail-ej1-f51.google.com with SMTP id hc16so22886317ejc.12
        for <usrp-users@lists.ettus.com>; Sat, 10 Jul 2021 09:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZWuu4N4s5S64Q1AJLOzXhkHIV0EWKleREmNBI2znpTs=;
        b=JVKuYutrhyojnkpnHddq5vEtFQHs74aGVmIiY/1u14j2ahJ2iw4r4HFfjkhF6J59H1
         u4oM8H2OATF4sefBRxqgaHh4qqZg7Rewhz3UVFbnSMdWgRtxoDBKuZX6ZqIDOBJGJIgN
         GnNx6lFK1pKWgHzPVd/7SgdWqwAd8ULqSiHG8mD3FqtPsbYi4G8oxturnnJTUG2DedHd
         Ps3wRkshtBTFSxFhQWjGsIaOm9jxMP+iJyLmAs2ohvAwhipHp5SD0dVu+HEHkTXrawIN
         P3NjYz6tpUnUt/uHgHTy1jMxuzLlXivKshCgtMIxqiPo0tWGtH4sdLXf/PTvEXEF+ldt
         Jygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZWuu4N4s5S64Q1AJLOzXhkHIV0EWKleREmNBI2znpTs=;
        b=fci+8I86x8gYMsm5wPCpUIfC1JMEMZinR1o8QF+NzFRntXU4akynCoap282zHisLoR
         D2a5Q0U+PxjuM2j3NCOzRZHiMonNrH7lXqQSrD1jtoq92ZgdjKvOy0aMtXkpQnHECW6N
         99xZfC0LYh7cOduOQ8VR0KZai8cfMFAOCLtUrWqjTPeXtv/R6SvNukyCuo3wSeoYCx/M
         JdGolra0HXBfm6w29BUqX8Jhnk7nnbvettHNJXauMtoXRbJUHVTvVFc6mFObE4YhPfBq
         PNeDHfNXICiKeOZdxfP2Jit1VQCcf5RDbZXDvmiULrI8gYTMZk6oj412y5ekov+V6uBE
         NZFQ==
X-Gm-Message-State: AOAM533OXHkC3QJWYzHR4yKneKZHGqoriNpozB8/DHNinqczXAkHGLl5
	YMDOlTng0nBD7cWo/4eA78+7GRwy2pKwD/UjtOkcVuqtDTY=
X-Google-Smtp-Source: ABdhPJygbAUiRcnHabTb2NesC/8sKk1Nuav3AaTGsWeeC+zSsmWqJjKTPUt0yxsOhiQ8k37F4Z5t7Eul8N576PAlgv8=
X-Received: by 2002:a17:906:f285:: with SMTP id gu5mr44581630ejb.226.1625934262594;
 Sat, 10 Jul 2021 09:24:22 -0700 (PDT)
MIME-Version: 1.0
From: southindian sdrusergroup <southindiansdrusergroup@gmail.com>
Date: Sat, 10 Jul 2021 21:54:12 +0530
Message-ID: <CA+ZVCtV4q3=-PO94n9B0PqJDAAu7Qn4PTabHBV5ZXNVDRATSog@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CVX2SMETQPVXG2O7RGWHJ6JZMBXRAM4A
X-Message-ID-Hash: CVX2SMETQPVXG2O7RGWHJ6JZMBXRAM4A
X-MailFrom: southindiansdrusergroup@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing the inaugural event of the South Indian SDR User Group (SI-SDR-UG) on Saturday July 24
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CVX2SMETQPVXG2O7RGWHJ6JZMBXRAM4A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6133724091353762168=="

--===============6133724091353762168==
Content-Type: multipart/alternative; boundary="0000000000002671dd05c6c75279"

--0000000000002671dd05c6c75279
Content-Type: text/plain; charset="UTF-8"

We would like to announce the inaugural event of the South Indian SDR
User Group (SI-SDR-UG)!The South Indian SDR User Group (SI-SDR-UG) was
founded in January 2021, and is a community of people, from novices to
experts, spanning industry, academia, and government, who are
interested in the design and implementation of Software-Defined Radio
(SDR) technology and systems. This includes such diverse areas such as
RF, digital signal processing (DSP), wireless communications,
operating systems, computer networking, software development and
optimization, machine learning, and radio hardware. The mission of our
community is to facilitate the exchange of ideas and enable greater
collaboration within the SDR community in India. We host a regular
technical workshops and gatherings, and we also run a dedicated Slack
workspace for the community. We have a YouTube channel for recordings
of past events, and a GitHub page for any relevant code. Our Twitter
feed contains announcements about events and other news relevant to
the community. We are not focused or tied to any one single software
tool, hardware platform, commercial vendor, or specific technology.
The SI-SDR-UG is non-profit, and the people on the organizing
committee are all volunteers. We are based in Bangalore, but we invite
people from all throughout India, as well as from outside India, to
join our community.Our first event will be held on *** Saturday July
24 at 19:00 (India time) ***, and will be streamed live on our YouTube
account.We still have an open slot for one more presentation in the
event, and we would like to offer it to the community.  If you would
be interested in speaking at the event, on Saturday July 24, sometime
between 19:00 and 23:00 (India time), then please get in touch with
us, we would be very interested in having you.Please see our website
for more information about the event agenda, as well as links to our
Slack workspace and YouTube
account.https://www.softwaredefinedradio.in/We look forward to seeing
you all at the event!

--0000000000002671dd05c6c75279
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-c-mrkdwn__pre" style=3D"box-sizing:inh=
erit;margin-top:4px;margin-bottom:4px;padding:8px;line-height:1.50001;font-=
variant-ligatures:none;white-space:pre-wrap;word-break:normal;border-radius=
:4px;color:rgb(29,28,29)"><font face=3D"verdana, sans-serif" style=3D"">We =
would like to announce the inaugural event of the South Indian SDR User Gro=
up (SI-SDR-UG)!</font><span class=3D"gmail-c-mrkdwn__br" style=3D"box-sizin=
g:inherit;display:block;height:unset"></span><font face=3D"verdana, sans-se=
rif" style=3D"">The South Indian SDR User Group (SI-SDR-UG) was founded in =
January 2021, and is a community of people, from novices to experts, spanni=
ng industry, academia, and government, who are interested in the design and=
 implementation of Software-Defined Radio (SDR) technology and systems. Thi=
s includes such diverse areas such as RF, digital signal processing (DSP), =
wireless communications, operating systems, computer networking, software d=
evelopment and optimization, machine learning, and radio hardware. The miss=
ion of our community is to facilitate the exchange of ideas and enable grea=
ter collaboration within the SDR community in India. We host a regular tech=
nical workshops and gatherings, and we also run a dedicated Slack workspace=
 for the community. We have a YouTube channel for recordings of past events=
, and a GitHub page for any relevant code. Our Twitter feed contains announ=
cements about events and other news relevant to the community. We are not f=
ocused or tied to any one single software tool, hardware platform, commerci=
al vendor, or specific technology. The SI-SDR-UG is non-profit, and the peo=
ple on the organizing committee are all volunteers. We are based in Bangalo=
re, but we invite people from all throughout India, as well as from outside=
 India, to join our community.</font><span class=3D"gmail-c-mrkdwn__br" sty=
le=3D"box-sizing:inherit;display:block;height:unset"></span><font face=3D"v=
erdana, sans-serif" style=3D"">Our first event will be held on *** Saturday=
 July 24 at 19:00 (India time) ***, and will be streamed live on our YouTub=
e account.</font><span class=3D"gmail-c-mrkdwn__br" style=3D"box-sizing:inh=
erit;display:block;height:unset"></span><font face=3D"verdana, sans-serif" =
style=3D"">We still have an open slot for one more presentation in the even=
t, and we would like to offer it to the community.  If you would be interes=
ted in speaking at the event, on Saturday July 24, sometime between 19:00 a=
nd 23:00 (India time), then please get in touch with us, we would be very i=
nterested in having you.</font><span class=3D"gmail-c-mrkdwn__br" style=3D"=
box-sizing:inherit;display:block;height:unset"></span><font face=3D"verdana=
, sans-serif" style=3D"">Please see our website for more information about =
the event agenda, as well as links to our Slack workspace and YouTube accou=
nt.</font><span class=3D"gmail-c-mrkdwn__br" style=3D"box-sizing:inherit;di=
splay:block;height:unset"></span><a target=3D"_blank" class=3D"gmail-c-link=
" href=3D"https://www.softwaredefinedradio.in/" rel=3D"noopener noreferrer"=
 style=3D"box-sizing:inherit;color:inherit;text-decoration-line:none"><font=
 face=3D"verdana, sans-serif">https://www.softwaredefinedradio.in/</font></=
a><span class=3D"gmail-c-mrkdwn__br" style=3D"box-sizing:inherit;display:bl=
ock;height:unset"></span><font face=3D"verdana, sans-serif" style=3D"">We l=
ook forward to seeing you all at the event!</font></pre></div>

--0000000000002671dd05c6c75279--

--===============6133724091353762168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6133724091353762168==--
