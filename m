Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A65B38B34C
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 17:33:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2AAB3863FF
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 11:33:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YIcstc+0";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 9443E3861A3
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 11:31:33 -0400 (EDT)
Received: by mail-vs1-f53.google.com with SMTP id x22so745357vsn.2
        for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 08:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=bXW2X/i2o1xNbXBTp9t9ZmCCMsvpasU0MwjeX35ff+U=;
        b=YIcstc+0zBr/1cS5au0b9a92Hc6PXdG7EeXcNiPj62ExardM527HOingmWA4wcX7h5
         t9s0LuoCxPURJUbl9q6RQCPJBK8mNjQD1zZLMzdf8sbtqpAFo9LtLbOMRvFoZlUxYrIo
         PaUbV8vGLhdhTTbGwHgBl6nxNcyMNq1wshhz9CyO5UEBT2orXrByMHPzbVHolHdErQbv
         /j/r7Sc5kZMUjir6n6HFkqF69AeTcCkHHDaAzoQlqEtYJNIqwWru39BPfBRiS8MELHuM
         O9hB9ETUmqtiuB2mygsUWYCyktkhzykXamRZE+U8Ohw46Alpx+BSoQK3UmwTXR5tyQ+Y
         2Nkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bXW2X/i2o1xNbXBTp9t9ZmCCMsvpasU0MwjeX35ff+U=;
        b=swzKVjNzrWBi2EFu8R1eLTNR5PQd+RPXMvDRzUZBY1j9X8r0LvDEk5FR341p3bMA7Q
         kuIzsuvoSLduIZ+9OzjJs12schcYKQMgzuAKBg4GEt1gfGw91JuLYLx8CYusNCNOoha2
         A/QCvD98G3iBDebLgrlc+idxYTLZtA0loivy+roNZqWv1Q64Vt+n5LxzqCerOtLO1zS2
         OGBJlDzr/fLW2kFooPTNUJv5A/xbxKZH1EawjI6Vc/0GOtdursh8QKLBdkbW0GoxlS+W
         hHdeNQvv3dndLdNP3cPgqhWSvpjYyqr6NYwi679mXEqR4/eWfrsPTemBev0IY78RtOuZ
         8U+g==
X-Gm-Message-State: AOAM532tOW+CP3eyGhvAD1iqJNxvMTE29oPIdUJYR8lM+XiAFsdSvxGP
	/n4mBeRKPudYv5+n4YzC2iIUP9bDSyOpEGuZCvBF/o8l
X-Google-Smtp-Source: ABdhPJwOrYYWNwCHo9cWbXXwW9YDvspc6cawq3V4i56tg15/KT5ws4gpqKIXyXav2XdTM0YIHSCHM5dWjbvP0CIv7KI=
X-Received: by 2002:a67:e3a9:: with SMTP id j9mr4894353vsm.41.1621524692878;
 Thu, 20 May 2021 08:31:32 -0700 (PDT)
MIME-Version: 1.0
From: Cino 13 <cinou13011@gmail.com>
Date: Thu, 20 May 2021 17:31:21 +0200
Message-ID: <CABeprjwo_rjNRpZ9rXpLzB6gO00-knyP8gdTDaSzZsRj+Ymqag@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XHKU2KEET2OQOJMBKBM6QWBRCV43JLV6
X-Message-ID-Hash: XHKU2KEET2OQOJMBKBM6QWBRCV43JLV6
X-MailFrom: cinou13011@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question about an OOT : NOC ID doesn't match
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XHKU2KEET2OQOJMBKBM6QWBRCV43JLV6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2079578857385207421=="

--===============2079578857385207421==
Content-Type: multipart/alternative; boundary="00000000000050484805c2c4a30a"

--00000000000050484805c2c4a30a
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I work with an USRP N310.
Some RFNoc blocks are not directly available on gr-ettus branch
"maint-3.8-uhd-4.0", such as RFNoc FIR Filter or RFNoc Split Stream.

That is why I have decided to create an OOT for each of them.
For example, for the Split Stream, I have created an OOT named rfnoc-Split,
and added a block called "Split".
I have copied in my OOT the block control (.cpp and .hpp) files included in
uhd/host/lib/rfnoc and uhd/host/include/uhd/rfnoc.

In my OOT, I have modified the end of the Split_block_control_impl.cpp file
to keep the right Noc ID (randomly generated).
I have also modified yaml files (one for grc, one for uhd).
I have copied the verilog files from
uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream in the right
repository of my OOT.

There's no issue for commands make and make install. The block is available
in GnuRadio.
I have builded an image with my 'Split' block without errors.

However, my USRP is connected to another computer, so I have copied my
rfnoc-Split to the second PC in order to install it there. I didn't forgot
to delete the rfnoc-Split/build and make it again to avoid Cmake errors.

The block is available on GnuRadio on the second computer.
So, I run uhd_image_loader with my .bit file.
The issue is here : After loading, running the command uhd_usrp_probe shows
that my image contains an "SplitStream" block, and not really my "Split".
So it is not callable by GnuRadio. (GNURadio-Companion says "Can't find
block")

It is the same problem for the OOT created with the FIR Filter. However,
the FIR filter is runnable through uhd.FirFilterBlockControl... (despite I
have builded an OOT block called "FIR2" which should work through an
interface called FIR2_block_control if I am right).

The most surprising is that the Noc ID of this block matches the genuine
uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml block id. (and not the Noc
ID of my rfnoc-FIR2)

What do you think about that?

Thanks for your help

--00000000000050484805c2c4a30a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi everyone,<div dir=3D"auto"><br></div><div dir=3D"auto"=
>I work with an USRP N310.</div><div dir=3D"auto">Some RFNoc blocks are not=
 directly available on gr-ettus branch &quot;maint-3.8-uhd-4.0&quot;, such =
as RFNoc FIR Filter or RFNoc Split Stream.</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">That is why I have decided to create an OOT for each of =
them.</div><div dir=3D"auto">For example, for the Split Stream, I have crea=
ted an OOT named rfnoc-Split, and added a block called &quot;Split&quot;.</=
div><div dir=3D"auto">I have copied in my OOT the block control (.cpp and .=
hpp) files included in uhd/host/lib/rfnoc and uhd/host/include/uhd/rfnoc.</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">In my OOT, I have modifie=
d the end of the Split_block_control_impl.cpp file to keep the right Noc ID=
 (randomly generated).</div><div dir=3D"auto">I have also modified yaml fil=
es (one for grc, one for uhd).</div><div dir=3D"auto">I have copied the ver=
ilog files from uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_split_stream in=
 the right repository of my OOT.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">There&#39;s no issue for commands make and make install. The bloc=
k is available in GnuRadio.</div><div dir=3D"auto">I have builded an image =
with my &#39;Split&#39; block without errors.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">However, my USRP is connected to another computer, so=
 I have copied my rfnoc-Split to the second PC in order to install it there=
. I didn&#39;t forgot to delete the rfnoc-Split/build and make it again to =
avoid Cmake errors.</div><div dir=3D"auto"><br></div><div dir=3D"auto">The =
block is available on GnuRadio on the second computer.=C2=A0</div><div dir=
=3D"auto">So, I run uhd_image_loader with my .bit file.</div><div dir=3D"au=
to">The issue is here : After loading, running the command uhd_usrp_probe s=
hows that my image contains an &quot;SplitStream&quot; block, and not reall=
y my &quot;Split&quot;. So it is not callable by GnuRadio. (GNURadio-Compan=
ion says &quot;Can&#39;t find block&quot;)</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">It is the same problem for the OOT created with the FIR =
Filter. However, the FIR filter is runnable through uhd.FirFilterBlockContr=
ol... (despite I have builded an OOT block called &quot;FIR2&quot; which sh=
ould work through an interface called FIR2_block_control if I am right).</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">The most surprising is tha=
t the Noc ID of this block matches the genuine uhd/host/include/uhd/rfnoc/b=
locks/fir_filter.yml block id. (and not the Noc ID of my rfnoc-FIR2)</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">What do you think about that?<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for your help</di=
v></div>

--00000000000050484805c2c4a30a--

--===============2079578857385207421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2079578857385207421==--
