Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F6B503780
	for <lists+usrp-users@lfdr.de>; Sat, 16 Apr 2022 18:22:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02233384D61
	for <lists+usrp-users@lfdr.de>; Sat, 16 Apr 2022 12:22:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650126144; bh=k+pvXWibp19Hg2uhkj+td69We/U0kNZv++wgHRTLjkg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=b8iOwrnRoKa0wVbjt12yzzWwiHBqEJAW//zBsS7UcYHxyst4Qf2UZPm2x93/i7/Nl
	 qpprHv1FwcJOGumItEssdqj+OYQSttz44Q5ubrTLao25+IEFLpu6Xb5vXyaZ1JlUmW
	 3MvJoBy35U2i2xRL1T29a8zppq9xyO9KotRrKVF9P9SpL0nVjtsekt3Nmp/LPBRGys
	 l9nacNojdsNSw1Vi/j490uTS+zAjoPLQCJnQRlVyk79Nu1mrxVFSHCKdGfmFqBH/Mw
	 t5anHcdblkr/d8h1sMZO90RQcFt0BJ65H/c+jIkDGJpOr0Eueyr3rjWfJO3fFBKskV
	 4+Ocu4K7eu1ow==
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BFD36384733
	for <usrp-users@lists.ettus.com>; Sat, 16 Apr 2022 12:21:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="hveSUwEG";
	dkim-atps=neutral
Received: by mail-io1-f43.google.com with SMTP id c125so3510596iof.9
        for <usrp-users@lists.ettus.com>; Sat, 16 Apr 2022 09:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=6dMf5OuKpp+ME+8DofKoA5O0CooYWCiqIs4EReRvhcM=;
        b=hveSUwEGc5J3t9DERQXwT5vTKp4EnhhVPjQzCxRIZphJQaMoUOrMvODsqQ53OzsbfQ
         JAbJtj3tVCILEzsj/1KXIcjB5UR70XIJ2WAs8M4AqdJbjuI31zj1kIwWudd5bXb+wiaC
         Zmevos3IwFoPBXHBK/NyF/NZo5GIjFw+NOdDZj7n519bQw62mpGwZD1rgWDQK4EYC6UR
         m6p7H6fF6oqQDpM/d5Ih55lKLGhmQFeHCrB1i5DrPhUXvcGTNCEknymVyCF2qZUXzAJd
         25IDO8ZoJeTcK9zUvAGHaL/omrfLtXfLEXJm5MvQbstAHDPDeNOSm3vm0eeMAE9KTjp1
         kjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6dMf5OuKpp+ME+8DofKoA5O0CooYWCiqIs4EReRvhcM=;
        b=2KidCewFd306B45g02GTeKoCwaHOmI67zSYsqC/dsxsbi1ufsZXkbVFOUtDHkmu3yL
         QRIAyzzMJ3+8TMqDnMUUUxUqI8Hc+GtfsN2GrijjhsJH/TlQTcjQqgIbm2yx6D7MZS+z
         WUzAxdEofmLUKObOCWrnOJLIQeF+yzkdq5AxQoLvfvbD9E8e8KUwxBRuVfjj/rmB3zlF
         teoW1HzEwDL5NsP6AfKkRv0WE2QDP0/uto+6FtYc4Ke75q0tHmLA5KIhHISoKgqGsJIO
         KhjBofM8MZOIbBp2JsL+2PinxNFLyfA61muBdb3+x5iOYtSlezxk53hhdFKjUv31iirb
         H8mA==
X-Gm-Message-State: AOAM533A3OwdN1hn7GHfGLK9z5tvE9cElWhcmRbch3dp8v1a7JWvAC5y
	yjiukTe0gYfo2P0Ccar8vQo3xrOkvPnEh23YCSrJc/AdRmxOmDqY
X-Google-Smtp-Source: ABdhPJyacTWnJHmKjqGii93QiipZ3uhB/Ys83ANaQNZSkGfjTqICOA//gu5X6rDME++SP9gZoVdMF+gLt6IYFK3NKpU=
X-Received: by 2002:a05:6602:2f0a:b0:64f:99ed:d732 with SMTP id
 q10-20020a0566022f0a00b0064f99edd732mr1510082iow.150.1650126074516; Sat, 16
 Apr 2022 09:21:14 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sat, 16 Apr 2022 11:20:38 -0500
Message-ID: <CACaXmv-Mr43NRTE7eaGORYkvyFOazRgcV6iDEECxkoh2q+Qvfw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: XDZODPIS255GRBR4F4DGEKLJLZT5VFA5
X-Message-ID-Hash: XDZODPIS255GRBR4F4DGEKLJLZT5VFA5
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SI-SDR-UG Event 3 -- Save the Date!! -- Saturday April 30
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XDZODPIS255GRBR4F4DGEKLJLZT5VFA5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7554024163832932899=="

--===============7554024163832932899==
Content-Type: multipart/alternative; boundary="00000000000081ac4305dcc7ea31"

--00000000000081ac4305dcc7ea31
Content-Type: text/plain; charset="UTF-8"

Save-the-Date!!

The 3rd event of the South Indian SDR User Group (SI-SDR-UG) will be held
on Saturday April 30.

The event is free and is fully virtual.

Please visit our website for the agenda, and for updates as the date gets
closer.

https://www.softwaredefinedradio.in/

--00000000000081ac4305dcc7ea31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Save-the-Date!!<br><br>The 3rd event of the South Indian SDR Us=
er Group (SI-SDR-UG) will be held on Saturday April 30.<br><br>The event is=
 free and is fully virtual.<br><br>Please visit our website for the agenda,=
 and for updates as the date gets closer.<br><br><a href=3D"https://www.sof=
twaredefinedradio.in/">https://www.softwaredefinedradio.in/</a><br><br></di=
v></div>

--00000000000081ac4305dcc7ea31--

--===============7554024163832932899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7554024163832932899==--
