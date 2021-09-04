Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5C14008C9
	for <lists+usrp-users@lfdr.de>; Sat,  4 Sep 2021 02:51:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33BC2384887
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 20:51:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kya/eNqR";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DC9B384428
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 20:51:15 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id z7so687274qvi.4
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 17:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=4aYvm6YFie5ITG8ThJQ7Femi8TyJlxjK8SHkCv6ULUg=;
        b=Kya/eNqRp4HnJjRuWhSh9XtjNZmxag0Fo0JBgws76TgZy42VlLskLAJf3XjdpuIJuG
         cKChXTKpg6PCYsETBWHGcWeV+S+M9kmRPjShPzFpp8PHEeIcWFJM3zyYU4MkPoKFMqXK
         2MXB12SwOrn3RKuXO0N/Zj2d4dSg6pZ0Drfxlmh5E1+4RDoxbPB7ZCM793wPU6qRkBfF
         9X17vS42EnzqgU5nnVB8qK1UbvYnIU/MKMsDSWSBZmV4/3RffnpQN2WOn++Cog84ViGT
         otkDVZOv9Z896nj7GJK2eKHNhpq9DFttrsVUN1oH/TxNkyzuUA/9Q9+yIj7K5dK9bRnG
         xHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=4aYvm6YFie5ITG8ThJQ7Femi8TyJlxjK8SHkCv6ULUg=;
        b=N0Gs68FMuTsVUwn9K2gmcmtXKXKeSU9sNlnx4+h4vX4CqF6A1nq4YlstEe+FA7QriL
         iMeh8YQtJMPRn0yXi4l12orzhzB3BSDzVp9byfPi1XWOdC5KwszK5fcrwp0Z3iJeCs/j
         VEmEy8goibwpoKGaltWrWWYow2hby8229YpxXJqJWSzAZB9++op98dsh/4+Pp6g3DyIc
         G94Q91dkpssidH5rD9mThx2BMnEPEdtdniFk6LfvDFKY/qhsAFsGmMGD+otFIoGHkoPg
         B6ShgOf4Qri9fj6mq6V5Ry5JduEA+U8oubYKRBW6WiGKO6SXYADjCOiTfFZSqEqFpUk3
         Ax6A==
X-Gm-Message-State: AOAM533h/N8gQYEsm3ZtUwKgqgK4DEpBNhThc9nrVs/UOqd+k07rcuAm
	ww3p8sGLM99m+s5hw39V5REWfA9/pJM=
X-Google-Smtp-Source: ABdhPJzE71yutVuTdit6YSqR2/TZM+mYaPN0s+RKRZFs4OO9mpNLyHoT5VWaG/Rv3kLv6++a558qcA==
X-Received: by 2002:ad4:40d1:: with SMTP id x17mr1578190qvp.7.1630716674795;
        Fri, 03 Sep 2021 17:51:14 -0700 (PDT)
Received: from smtpclient.apple ([2600:4040:4032:5000:b191:a507:a737:da81])
        by smtp.gmail.com with ESMTPSA id n26sm731477qtl.8.2021.09.03.17.51.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 17:51:14 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 3 Sep 2021 20:51:13 -0400
Message-Id: <FB78972D-B829-4AAA-9D7B-E34374B6B1B5@gmail.com>
References: <6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs@lists.ettus.com>
In-Reply-To: <6SGl7SiQ5U06NCKv9jknwlFGuFud7qXiPqE5wZqPs@lists.ettus.com>
To: thebouleoffools@gmail.com
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: LYUATKVUDYY62RF2XZMNRGWLLAJOOT2Z
X-Message-ID-Hash: LYUATKVUDYY62RF2XZMNRGWLLAJOOT2Z
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Radio Application fails to run as service on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LYUATKVUDYY62RF2XZMNRGWLLAJOOT2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6257281215364107638=="


--===============6257281215364107638==
Content-Type: multipart/alternative; boundary=Apple-Mail-4336F3C2-7265-4D9C-A576-7CF6B54DA419
Content-Transfer-Encoding: 7bit


--Apple-Mail-4336F3C2-7265-4D9C-A576-7CF6B54DA419
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Build uhd with debug flags enabled. The output is dense but really insightfu=
l, especially if you=E2=80=99re doing RFNoC and have read the RFNoC spec. A l=
ot of steps in the process are executed silently in log levels warning and i=
nfo.=20

<end transmission>

> On Sep 3, 2021, at 20:32, thebouleoffools@gmail.com wrote:
>=20
> =EF=BB=BF
> I have a python script built with gnuradio, with a few additional goodies a=
dded. It runs fine for days if I start it manually. But, if I try to start i=
t with systemd or cron, it gets to:
>=20
> gr::log :DEBUG: rfnoc_rx_streamer0 - Commiting graph=E2=80=A6
>=20
> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command=E2=80=A6=

>=20
>=20
>=20
> And then=E2=80=A6 nothing. I have put print statements (I know=E2=80=A6) a=
ll over my code, and everything runs just fine up until this message appears=
, and then the script just stops. I get the same message when running it man=
ually, but the script continues to run just fine. I=E2=80=99ve tried executi=
ng my code line by line in a python console, but it executes normally. I=E2=80=
=99ve tried having it run as different users, as root, I=E2=80=99ve tried us=
ing =E2=80=9Cbash -l -c =E2=80=98python=E2=80=A6=E2=80=99=E2=80=9D, I=E2=80=99=
ve tried all sorts of different systemd options, but it=E2=80=99s the same r=
esult every time no matter if it=E2=80=99s systemd or cron. Nothing in the l=
og output, journalctl, /var/log/messages, anything gives any help on identif=
ying the failure, just that the script isn=E2=80=99t running anymore.
>=20
>=20
>=20
> Any thoughts on how I might debug this? Something I=E2=80=99m missing?
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-4336F3C2-7265-4D9C-A576-7CF6B54DA419
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Build uhd with debug flags enabled. The out=
put is dense but really insightful, especially if you=E2=80=99re doing RFNoC=
 and have read the RFNoC spec. A lot of steps in the process are executed si=
lently in log levels warning and info.&nbsp;<br><br><div dir=3D"ltr">&lt;<sp=
an class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26,=
 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.23=
0469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end t=
ransmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n Sep 3, 2021, at 20:32, thebouleoffools@gmail.com wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>I have a pyth=
on script built with gnuradio, with a few additional goodies added. It runs f=
ine for days if I start it manually. But, if I try to start it with systemd o=
r cron, it gets to:</p><p>gr::log :DEBUG: rfnoc_rx_streamer0 - Commiting gra=
ph=E2=80=A6</p><p>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream c=
ommand=E2=80=A6</p><p><br></p><p>And then=E2=80=A6 nothing. I have put print=
 statements (I know=E2=80=A6) all over my code, and everything runs just fin=
e up until this message appears, and then the script just stops. I get the s=
ame message when running it manually, but the script continues to run just f=
ine. I=E2=80=99ve tried executing my code line by line in a python console, b=
ut it executes normally. I=E2=80=99ve tried having it run as different users=
, as root, I=E2=80=99ve tried using =E2=80=9Cbash -l -c =E2=80=98python=E2=80=
=A6=E2=80=99=E2=80=9D, I=E2=80=99ve tried all sorts of different systemd opt=
ions, but it=E2=80=99s the same result every time no matter if it=E2=80=99s s=
ystemd or cron. Nothing in the log output, journalctl, /var/log/messages, an=
ything gives any help on identifying the failure, just that the script isn=E2=
=80=99t running anymore.</p><p><br></p><p>Any thoughts on how I might debug t=
his? Something I=E2=80=99m missing?</p><p><br></p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-4336F3C2-7265-4D9C-A576-7CF6B54DA419--

--===============6257281215364107638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6257281215364107638==--
