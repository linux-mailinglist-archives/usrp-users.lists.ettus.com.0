Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A76F3DF092
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 16:45:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8F4638447B
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 10:45:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="keOADZXe";
	dkim-atps=neutral
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 54F3B383DB5
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 10:44:34 -0400 (EDT)
Received: by mail-io1-f44.google.com with SMTP id f11so24499722ioj.3
        for <usrp-users@lists.ettus.com>; Tue, 03 Aug 2021 07:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=EeRwpLKJgcJc/LBz/uYPu0LfG3i0uuxCAqNyKMdTas0=;
        b=keOADZXe0z58GMA+LmQzpONR8vdjs+zQ/8errTtE19ip1ESPLEE1VxGE03GEvLajsq
         mcYsduYDkErkdiGGC4imF8X4IgFkap1F5F/UIWFUDB2TDS/hGGUXZ/XIt0RmyAR/GcNb
         GP/mYhLJCJnfNf0iAZB60h9EjYFAvCigST5juldw+5XUoqK1YiAfYwj2u4E4JBiuNJR/
         IMqy/V7TS7iXn5qB/ZBx8pZWIVim5AOZQEWV8xEoY4Toew/FT9fz/numLsdpnJCXYQHa
         PiZRTJFaughU59MP4u5DAMK1b6SoBNFOrJ0IoRycqemZQMymaFFlH4aESsFj3+tmUtKT
         luRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=EeRwpLKJgcJc/LBz/uYPu0LfG3i0uuxCAqNyKMdTas0=;
        b=SfppWSOQ9xt22v4afmtrQQ0TjoU72rkPts0PKMDOJfv5s7RGdAGRW+/WqYJkozlNeJ
         lB3DoYVSP9KZosHY7O1HuwOd9agivBkyrY80++f1o99Us/bidsWmHB5BZ5sTC9LXh+nT
         Ue8Q2vL1x4+/x1TIqrHIIP9a/vknBxJJjNs0FLITbf4Wsz9kNeRc9Zs1hd5/h+a/HGJa
         HtsfAZFQepCrovoSIF6fZAx2V8c37xEBCmWAU9Chb1a+0pC1bkrQ4PbVJz7NpoCN6S1C
         nGSnmUwTQbhNoift/CS9u4/MqHn36evK1IyRd2+TS9Vs54r4sduJIzTuEenCZ/g0Vkp8
         WWWg==
X-Gm-Message-State: AOAM530OArtTSGznY7pIGimadYve39Yh6UKpLCJ6QcLJXlD97hOM0lLj
	JmomawJrww9HxM81Y29YYpOTjtoyHWYk4+JEapE=
X-Google-Smtp-Source: ABdhPJxeg8U6Kq6emF9krVYpcTGMabMGf//0g21FV4jEYJPqD2b5taoinBp3dy2W1qoaJg6onpwOZEl9q5Ub/sVpEV8=
X-Received: by 2002:a6b:f707:: with SMTP id k7mr1520692iog.125.1628001873555;
 Tue, 03 Aug 2021 07:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <VIOhSBdfi8Q5lLG3OpBJTnl16isVEuZulcHLvlUCOFQ@lists.ettus.com>
In-Reply-To: <VIOhSBdfi8Q5lLG3OpBJTnl16isVEuZulcHLvlUCOFQ@lists.ettus.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Tue, 3 Aug 2021 17:44:22 +0300
Message-ID: <CAPRRyxsxBXiwTfifNABa60mO2ELfBCX-S1nAX=c8-DSr5DbS+A@mail.gmail.com>
To: thebouleoffools@gmail.com, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: XGACV4QRNSZUZEM4T65XUOH6MFRYVZUK
X-Message-ID-Hash: XGACV4QRNSZUZEM4T65XUOH6MFRYVZUK
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build FPGA image USRP E310 UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XGACV4QRNSZUZEM4T65XUOH6MFRYVZUK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0232339093907372416=="

--===============0232339093907372416==
Content-Type: multipart/alternative; boundary="0000000000005df5bc05c8a8b9fc"

--0000000000005df5bc05c8a8b9fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

And you can have an example in which to the standard firmware cutters
for example FFT and a window. And what is the sequence of actions when
downloading the firmware to the board?


=D0=B2=D1=82, 3 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 03:12, <thebouleoff=
ools@gmail.com>:

> I followed the guide here and was able to build a few simple images:
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0 . The command
> is now =E2=80=9Crfnoc_image_builder.=E2=80=9D
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005df5bc05c8a8b9fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">And you can have an ex=
ample in which to the standard firmware cutters for example FFT and a windo=
w. And what is the sequence of actions when downloading the firmware to the=
 board?</span></pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">=D0=B2=D1=82, 3 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2=
 03:12, &lt;<a href=3D"mailto:thebouleoffools@gmail.com">thebouleoffools@gm=
ail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>I followed the guide here and was able to build a few simple images: <a=
 href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0" target=
=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a> =
. The command is now =E2=80=9Crfnoc_image_builder.=E2=80=9D</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005df5bc05c8a8b9fc--

--===============0232339093907372416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0232339093907372416==--
