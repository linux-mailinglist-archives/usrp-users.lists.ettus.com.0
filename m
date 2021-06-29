Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 917233B7677
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 18:29:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B32AF3843B9
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 12:29:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BsKjip6O";
	dkim-atps=neutral
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 06CA5384384
	for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 12:28:56 -0400 (EDT)
Received: by mail-pj1-f50.google.com with SMTP id kt19so4880245pjb.2
        for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 09:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=P1KOjS5WydJeHU2u3duxvhEp4nkBZAfDfqgplhSG3Vs=;
        b=BsKjip6OIWYjyLDS21nwinSfTv4CleRMQnv7/48aRmV5kxBL1QqIqpq3zraKQNQYKs
         UlpgWpDa3YhAmNGKGt/cOwd+jf7rGvFASzu3Qkgd6//haNXJtVzs1H3EgINBo8Zjh01P
         d7YAtsfS012rW3xYaFVeqpdo5CHSjusQp1qJ41q8bGCROncJPISeqq5qV0rVdn2dtbKP
         reIojnPDZideQziAlRUwOcA3TMEoENQUTR4J//LWb46b5DGX5pFIBsbuZPJfaQQ5O1j2
         a4A/Luo54bxQRJzoRs/J9sJvLV1BzFqvh8+XFlqVw0FtFAJKSM04hDqdbX2w+2/Uurqu
         7aow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=P1KOjS5WydJeHU2u3duxvhEp4nkBZAfDfqgplhSG3Vs=;
        b=SFse6aZPw9dTcnn7DAhu70XlEABy06od4eKs4bWhNqyw1uNu2pdnhLbGAO8UuSEhmc
         O6N7EZlpdjnjyW4RZSzzNJJ0bUKsRQceVUKLxLvOstssMxFbph7iwVqKx/EiKMdLG6Hz
         0DnQcNHAnbvKXpYoRZruMCcCZJuodinacB4bQEbUhNISjeieqfAUSfovo+ZDg+Xff2S4
         298gIJDkenJJW2EX17Vs7M3845PWRWrX5Y1wNvHgpe1RZwa7cQRwMR5S/QLUyuVuBSWw
         0ZT6WkUgQeBa0L94UIhQQ+gkeWhnNYtM87IonMXhFR8N4qD0bIYZsjEBzn7XiBj9C5mx
         JobQ==
X-Gm-Message-State: AOAM531QwA9w0VoAK8gVQ9pLpH4kxzxDdfT43npToFGSVJXtmDute+m/
	o3JY3q4zqHkChHKLk8AB2eWl42zuP/epx4ALLv4tweyRTpQ=
X-Google-Smtp-Source: ABdhPJy1ak1xWLIcmDA69OIfPQiIwysN83UHXbfkuVWEW9l9FdyRV0atlQVHEx+HfUtH6eLm619oi/xk6OdTqDgFaTc=
X-Received: by 2002:a17:902:c3c6:b029:128:f061:889d with SMTP id
 j6-20020a170902c3c6b0290128f061889dmr6607901plj.50.1624984135692; Tue, 29 Jun
 2021 09:28:55 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Leandro_Echevarr=C3=ADa?= <leoechevarria@gmail.com>
Date: Tue, 29 Jun 2021 13:28:44 -0300
Message-ID: <CALEOA2hdgtKUhL5Szt=bSJ8otbcTprT1QwQLUYqFN7wv8CDLLQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: D3CWN2FTTHSV7LVWUBS3IKHAEDHYZLBJ
X-Message-ID-Hash: D3CWN2FTTHSV7LVWUBS3IKHAEDHYZLBJ
X-MailFrom: leoechevarria@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TX & RX time synchronization in B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D3CWN2FTTHSV7LVWUBS3IKHAEDHYZLBJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5043009375335303517=="

--===============5043009375335303517==
Content-Type: multipart/alternative; boundary="0000000000002c761b05c5ea1a82"

--0000000000002c761b05c5ea1a82
Content-Type: text/plain; charset="UTF-8"

Hey everybody,

I'm using timed commands to request a waveform to be sent at the same time
I'm starting an acquisition, on the same channel, with a loopback connected
between TX an RX on a USRP B210 @ 10 MSps. Upon loading the data I acquired
and plotting both the sent (reference) and received waveforms together, I
see the received one appearing about 50 samples later than the reference. I
see the same offset if I plot the correlation between the two.

If I configure the TX to start around 50 samples earier than the RX, this
effect is mitigated, but I'd really like to know what's causing this. It
also seems to be systematic across runs and configurations. Any ideas if
this is a known hardware or software limitation? Or whether I might be
missing something when setting the board up?

Thanks and regards,

Leo

--0000000000002c761b05c5ea1a82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey everybody,</div><div><br></div><div>I&#39;m using=
 timed commands to request a waveform to be sent at the same time I&#39;m s=
tarting an acquisition, on the same channel, with a loopback connected betw=
een TX an RX on a USRP B210 @ 10 MSps. Upon loading the data I acquired and=
 plotting both the sent (reference) and received waveforms together, I see =
the received one appearing about 50 samples later than the reference. I see=
 the same offset if I plot the correlation between the two.</div><div><br><=
/div><div>If I configure the TX to start around 50 samples earier than the =
RX, this effect is mitigated, but I&#39;d really like to know what&#39;s ca=
using this. It also seems to be systematic across runs and configurations. =
Any ideas if this is a known hardware or software limitation? Or whether I =
might be missing something when setting the board up?<br></div><div><br></d=
iv><div>Thanks and regards,</div><div><br></div><div>Leo</div></div>

--0000000000002c761b05c5ea1a82--

--===============5043009375335303517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5043009375335303517==--
