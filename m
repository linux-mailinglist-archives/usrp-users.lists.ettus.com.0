Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5541C36FCFE
	for <lists+usrp-users@lfdr.de>; Fri, 30 Apr 2021 17:04:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BCD5383DC0
	for <lists+usrp-users@lfdr.de>; Fri, 30 Apr 2021 11:04:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YjxIZ3LU";
	dkim-atps=neutral
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id D1745383DBD
	for <usrp-users@lists.ettus.com>; Fri, 30 Apr 2021 11:03:49 -0400 (EDT)
Received: by mail-lj1-f173.google.com with SMTP id p12so4244325ljg.1
        for <usrp-users@lists.ettus.com>; Fri, 30 Apr 2021 08:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XHXT46VoaQ3X3plq/o9ozSk5nOrSxOG0GyytRUi+HQo=;
        b=YjxIZ3LUE6cwkI1137rrOTwAjPofJXyo4s6iNaFM9dSdzCFiTFGVCWuv7q3xnUwfQF
         roQK+MgH2azIU4LDBOOsyFwN8/99N7JVh4oGjRDyQ7v+jxFxWYmJBsCyIzYfEKe0w/S/
         Q5NscKp/9pCZ3Hd8k4RsfmmRf+q/SlNH+vBCZ/KNYWbcehfV0JKaQAD0dGxX/QVVLKBe
         2FtdL0Q19lobVlpqp1ak2K4j/yGKk3Ox2d5iIT3JXLry3YEU44BIjqFJyyeq7fPX0gLu
         je2pOnNWygNY+TmctlqyVe88o+L3AAG/e3hzCegg6gh+uvZtQl5uOom6JAy8e4lzwLFp
         x4BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XHXT46VoaQ3X3plq/o9ozSk5nOrSxOG0GyytRUi+HQo=;
        b=T357RojTMy1Qg6e7ZTXuN7e2rDbEoxCaJup4UbLohZy3TcBm11QvAfyzZND1t+wU6y
         AkuOY1n4AZAUWS0ctketUyS3lz3efe8jQsTNMlaCZWXVRkbCaKL+6TaxhjbtaeXSfCo0
         XJNKXJEG7SxQhVbtyACW5PTjGEaB1F7bneMbRqbyuCBXedpR6xeyzdqYJ0qypp3vMKIB
         KRaMuuLYDk3sF8nTod2bNJu0khuiPZa39+4kab3uRtocVYV3D7mxDgT9z1p7EL5zS8zk
         6j6kcGQvuzutLTKZ+G/xyhYO+jXRN3Mo5XCTzRZIlyZUK35HNcUcLaPKV8AAddPTVbBC
         Yz9g==
X-Gm-Message-State: AOAM533JL+Bk7D5GbIMHb9evRXQViIwypejI8oz3O9Bcrp/4JBNCrj3w
	2UAFpY3GNhqut2XgorhywGaw/+3NB7Ioa4mT4WG2SSkiUWo4qQ==
X-Google-Smtp-Source: ABdhPJw8MHsecVYNPynLyUH7zl2f4NCJVu1bACwedfDKn5a6ghKblk+7kKpeWkwztuHjJTYyAjmvhiXo9V06sq6szAM=
X-Received: by 2002:a2e:a60c:: with SMTP id v12mr4259417ljp.310.1619795026822;
 Fri, 30 Apr 2021 08:03:46 -0700 (PDT)
MIME-Version: 1.0
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 30 Apr 2021 11:03:36 -0400
Message-ID: <CACwKM9JGmC2w5Ggrtu5hpWYez0VJQVw1=x=X7fPEf-UeBfHqGQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 5ZSPBCDO2NUGSEDFEEF6A7EEP7T7LJ46
X-Message-ID-Hash: 5ZSPBCDO2NUGSEDFEEF6A7EEP7T7LJ46
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD4.0/RFNoC/gr-ettus/Fosphor locking up and not stable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ZSPBCDO2NUGSEDFEEF6A7EEP7T7LJ46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2829238315820084097=="

--===============2829238315820084097==
Content-Type: multipart/alternative; boundary="0000000000002eca5505c131eb36"

--0000000000002eca5505c131eb36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there.
Im a long time USRP/UHD/GNURadio user. Very familiar with all 3. Im doing
my first project with RFNoC using an X310 to showcase its capabilities and
add a custom block. I=E2=80=99ve built 2 custom images per the tutorials on=
 the
knowledge base. 1 has the core blocks with FFT added (from the knowledge
base example) and the second has the fft and fosphor block added.
So far the radio->DDC example flowgraph works fine on the base image.
When I load the FFT/fosphor image and run the fosphor flowgraph:
Radio->DDC->FFT->Fosphor->Streamer->Fosphor Display
The display works, but the screen locks up, the size can=E2=80=99t be adjus=
ted,
none of the widget controls work (gain, freq) and closing the
window/pressing stop in GRC also does nothing. I have to force quit the
application or kill -9 to stop it. At very low sample rates (like 1Msps) it
can keep up and behave as normal. 5Msps, i'm able to close but have a
significant delay before it shuts down. Anything above that runs it into
the ground.
To me, this behavior feels similar to running a high-rate flowgraph with no
throttle or clock source and the GUI gets nuked from all the data coming
through.

Any idea how to debug this problem or what might be causing these issues?
Is there a way to offer a more detailed explanation of how to use fosphor
in the new RFNoC? The only explanation for how to use the newest fosphor
that I can find is here:

http://ettus.80997.x6.nabble.com/USRP-users-setting-up-gr-fosphor-on-uhd-4-=
td16532.html

My system is the following
Ubuntu18.04LTS
GNURadio maint-3.8
UHD4.0
gr-ettus master

Any thoughts or ideas would be really helpful.

Thanks,
B

--0000000000002eca5505c131eb36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there.=C2=A0<div>Im a long time USRP/UHD/GNURadio user.=
 Very familiar with
 all 3. Im doing my first project with RFNoC using an X310 to showcase=20
its capabilities and add a custom block. I=E2=80=99ve built 2 custom images=
 per=20
the tutorials on the knowledge base. 1 has the core blocks with FFT=20
added (from the knowledge base example) and the second has the fft and=20
fosphor block added.=C2=A0<div>So far the radio-&gt;DDC example flowgraph w=
orks fine on the base image.=C2=A0<div>When I load the FFT/fosphor image an=
d run the fosphor flowgraph:</div><div>Radio-&gt;DDC-&gt;FFT-&gt;Fosphor-&g=
t;Streamer-&gt;Fosphor Display=C2=A0</div><div>The
 display works, but the screen locks up, the size can=E2=80=99t be adjusted=
,=20
none of the widget controls work (gain, freq) and closing the=20
window/pressing stop in GRC also does nothing. I have to force quit the=20
application or kill -9 to stop it. At very low sample rates (like 1Msps) it=
 can keep up and behave as normal. 5Msps, i&#39;m able to close but have a =
significant delay before it shuts down. Anything above that runs it into th=
e ground.<br></div><div><span style=3D"color:rgb(0,0,0)">To
 me, this behavior feels similar to running a high-rate flowgraph with no t=
hrottle or clock source and the GUI gets nuked from all the data coming thr=
ough.</span></div><div><span style=3D"color:rgb(0,0,0)"><br></span></div><d=
iv>Any idea how to debug this problem or what might be causing these issues=
?</div><div>Is
 there a way to offer a more detailed explanation of how to use fosphor=20
in the new RFNoC? The only explanation for how to use the newest fosphor
 that I can find is here:</div><div>=C2=A0<a href=3D"http://ettus.80997.x6.=
nabble.com/USRP-users-setting-up-gr-fosphor-on-uhd-4-td16532.html" target=
=3D"_blank">http://ettus.80997.x6.nabble.com/USRP-users-setting-up-gr-fosph=
or-on-uhd-4-td16532.html</a></div><div><br></div><div><div>My system is the=
 following</div><div><div>Ubuntu18.04LTS</div><div>GNURadio maint-3.8</div>=
<div>UHD4.0</div><div>gr-ettus master<br><div><br></div><div>Any thoughts o=
r ideas would be really helpful.=C2=A0</div><div><br></div><div>Thanks,</di=
v><div>B</div></div></div></div></div></div></div>

--0000000000002eca5505c131eb36--

--===============2829238315820084097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2829238315820084097==--
