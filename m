Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C28674748FE
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 18:14:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23E1F384822
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 12:14:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CazIYS8L";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id ECDAA3846D2
	for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 12:13:08 -0500 (EST)
Received: by mail-ot1-f50.google.com with SMTP id n104-20020a9d2071000000b005799790cf0bso21611732ota.5
        for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 09:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/czrzfAry5W3VBMCBbczRFb988dAd5wm3iF+CXU0XNM=;
        b=CazIYS8LyYH2n40ed4+FJCaG/wHxUgT0/ATO18dZvQp38CxUmrlycSAO5gpo76lYSE
         FsqSnA9iuljqXEoJdZVUG8kW0U+YNII6Y03KHPSsmixahWQkfmQFtT4N0Lh7O7gvH0jM
         pGXBdIo0skTzi6l9tBCzYPaj7vz7SbeAnhQaqY0ntk7aQNJxAzm2lUfIujealUM5+goX
         CfCMEC+lUTOehVAlU5va8u2cuWVcIEvJHrsrNEqBzD1yUljr2XaEwf6gMhd7J0d9Awxk
         qKmkC0YC0cYSYniPNfxELLStELDTMkvxxvjW3QUKulsSpOeunNGUKCK7vJWLfFVDWx+U
         TpgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/czrzfAry5W3VBMCBbczRFb988dAd5wm3iF+CXU0XNM=;
        b=MG2Jas6ZZjGn5OgMNrkodB9zR4ElwXcvbFbRpk0K+MHg8qYarNDseJk/gCj2bMSRgR
         KsgV4i/ONps4QiLpFul4MNrH6pbZ0tJqQbt80S2+Rt9oZdffHnggyRF1N6Y4X3yYxJ7w
         wZxK9uFkM3l/HIegZS5VN2cj6SZhcHx0VsKoT/115AP/JY9aBuzvXh1bMlTVAmFQ158P
         2A8c1hk2LV63aShvPzh/B6FlZ0OrRdvsw41FPb4Km6gPiywra5kC/UaMrwWbBQ/60BYc
         lCBmuX1+DXryLl4YVwhwh7yKy1PMxFB6zrBmckaO0TSB/iJPWCWIckD5o/UjX+rVv2ii
         rcmw==
X-Gm-Message-State: AOAM530Py7LFEyWlWxnyDjJmfWPTYhwlOZBtHY2LHODe7qu0Ji5rA7lM
	zcxq94dPz/so00oyAfwy02w3i4D5WrFChcDy5qyKj3aX
X-Google-Smtp-Source: ABdhPJzSncx2UFVL+8VDai9Ry59TwxQPAeNuqPW9/tOQVrauhtikpFX0BuiiwwGWUTo+tftRLawBDFXIwsPZr3RDeOc=
X-Received: by 2002:a9d:6f0e:: with SMTP id n14mr5276228otq.173.1639501988063;
 Tue, 14 Dec 2021 09:13:08 -0800 (PST)
MIME-Version: 1.0
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Tue, 14 Dec 2021 20:12:57 +0300
Message-ID: <CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 6A2MUE3HYI3XGHG6CX4FWXBGY7ARCLWV
X-Message-ID-Hash: 6A2MUE3HYI3XGHG6CX4FWXBGY7ARCLWV
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP and GPS antennas
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6A2MUE3HYI3XGHG6CX4FWXBGY7ARCLWV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1407190575482971111=="

--===============1407190575482971111==
Content-Type: multipart/alternative; boundary="0000000000009b6e8005d31e4dab"

--0000000000009b6e8005d31e4dab
Content-Type: text/plain; charset="UTF-8"

Hi there,

A few months ago I ended up with a pair of USRP E312's and u-blox ANN-MB-00
GPS antennas. I was able to synchronize both devices and acquire
properly aligned samples and things are looking good.

However, today I realized that the u-blox antenna I have is an active
antenna and checking its datasheet it looks like it requires 15 mA/3-5 V DC
supply for the integrated LNA. Does this mean that the GPS port of 312 has
a bias-tee that supplies the necessary currents? If there is a bias-tee,
where can I find information about it?

Also checking the Ettus store, it looks like different antennas are
compatible with different USRP models. For instance "3V Active GPS Antenna
for N series" is apparently compatible with E310 both not compatible with X
and B series. Which factor determines the compatibility?

Best regards,
Temir

--0000000000009b6e8005d31e4dab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>A few months ago I ended up w=
ith a pair of USRP E312&#39;s and u-blox ANN-MB-00 GPS antennas. I was able=
 to synchronize both devices and acquire properly=C2=A0aligned samples and =
things are looking=C2=A0good.=C2=A0</div><div><br></div><div>However, today=
 I realized that the u-blox antenna I have is an active antenna and checkin=
g=C2=A0its datasheet=C2=A0it looks like it requires 15 mA/3-5 V DC supply f=
or the integrated LNA. Does this mean that the GPS port of 312 has a bias-t=
ee that supplies the necessary currents? If there is a bias-tee, where can =
I find information about it?</div><div><br></div><div>Also checking the Ett=
us store, it looks like different antennas are compatible with different US=
RP models. For instance &quot;3V Active GPS Antenna for N series&quot; is a=
pparently compatible with E310 both not compatible with X and B series. Whi=
ch factor determines the compatibility?</div><div><br></div><div>Best regar=
ds,</div><div>Temir</div></div>

--0000000000009b6e8005d31e4dab--

--===============1407190575482971111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1407190575482971111==--
