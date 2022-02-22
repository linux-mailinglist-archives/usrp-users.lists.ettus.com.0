Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAAE4BF81D
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 13:37:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 751BF384DD3
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 07:37:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mAiiN33x";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 133F8384D93
	for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 07:36:41 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id p19so40738194ybc.6
        for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 04:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=c+AFK/VRUulWXzi4vSOgHuIgDjzMNkQ2qAuosXV3Fxs=;
        b=mAiiN33x9b0S5cH7PGcnc5qCL2xuoXCL/gCNlNjIWa0/qf8XycudHHCEf06k5+6hkt
         fxNoL6Vm/GkSkixoJ1ApBXGWn+NImvEVZdE5GPHWISJYZ6qvfd9LzQ0b4Rdh3Kt2GdSn
         x6b7CWPV8z+p8qdErhIx4LKODFgPogV3e6NaWV8hG/VjmRWtopmQbbc/fj9iAlhHDxik
         CuNysLOvqSW2dgz05Vm3L24fDei/+VOdX3EsIpd4y7uTOOilvfFlihFD3o7AvoIlHg5Z
         dj2qJUaH95NsVOkAkGuoFCsVQ19olfJbpHb1rwz8Ppedh+CddWKpPi1OI5FgWvHwhkBn
         L3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=c+AFK/VRUulWXzi4vSOgHuIgDjzMNkQ2qAuosXV3Fxs=;
        b=3VWNd/5E/53N9D6kVosczkgXFpuOBLkdLRCXsW9LH0gYS9Wp5HlG33dOQ2ImS1IQ99
         OfAEId1R+h4FqkDrcIOeU7FfCX8GLeTXj4aYq9AJ9YT4ZgD14a2dKDTjgBvip93cryux
         ymD2W3mn+Z3d6YrvYdb4/gQ6/4wpfmLD0AHt0GSkxDXTiOMVSzRYXwvgB98x1pMeukuY
         VWDclNntO8pFnPsVKdJD3UDI4aJN0Q7dRh857OfYebmuLf9Fbd8D7hRuRUq07HQIkX10
         jqmLmRBLU4Cq0f+HOch/9u+T+XiZlhbnTHt0NdEsCeRvh6rO9fDvpiDcss2elJpgvb39
         yGHA==
X-Gm-Message-State: AOAM530NU7UQKHc3jtAHsljbyrVqDvDOwY2c0guAZStAQHTwkeW7gWUz
	VgcqlS+b1vKFJL2kQ6b2w/o3pn9T8LUjAIPbtBMb1XalRiRy0uHQ
X-Google-Smtp-Source: ABdhPJxoEVdrMixC5/7UaoahXStPl7UpmFykIh9ForTC/tYYYJurX6yvLD8YWmgOmdbvWBZ0UoIkPVNGSDCBSUfJbAg=
X-Received: by 2002:a25:6911:0:b0:624:5f4b:2a01 with SMTP id
 e17-20020a256911000000b006245f4b2a01mr13960426ybc.303.1645533401308; Tue, 22
 Feb 2022 04:36:41 -0800 (PST)
MIME-Version: 1.0
From: Alvaro Pendas Recondo <apruhd@gmail.com>
Date: Tue, 22 Feb 2022 13:36:33 +0100
Message-ID: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3YIDPBPUTSA5RV6LUTFO26BCMXAJ2WCC
X-Message-ID-Hash: 3YIDPBPUTSA5RV6LUTFO26BCMXAJ2WCC
X-MailFrom: apruhd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3YIDPBPUTSA5RV6LUTFO26BCMXAJ2WCC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6621603522379573509=="

--===============6621603522379573509==
Content-Type: multipart/alternative; boundary="000000000000d9df3c05d89a993c"

--000000000000d9df3c05d89a993c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

When I work with 1 B210 I can get 2 Rx perfectly synchronized as expected.
Also, if I use 2 B210 with 1 Rx each, I can synchronize them with an
external reference (in this case the octoclock) without any problem.
However, when using 2 B210 with 2 Rx each (4 Rx in total) the
synchronization is still perfect between Rx of the same devices, but has
some problems between Rx of different devices. Of course, the result with
the octoclock is way better than if I do not use any external reference.
Nevertheless, it seems that  there are some problems with the phase sync
(although the frequency sync seems correct). I wonder if this is a hardware
limitation or if there is something I am not doing right.

Thank you very much,

=C3=81lvaro

--000000000000d9df3c05d89a993c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>When I work with 1 B210 I can ge=
t 2 Rx perfectly synchronized as expected. Also, if I use 2 B210 with 1 Rx =
each, I can synchronize them with an external reference (in this case the o=
ctoclock) without any problem. However, when using 2 B210 with 2 Rx each (4=
 Rx in total) the synchronization=C2=A0is still perfect between Rx of the s=
ame devices, but has some problems between=C2=A0Rx of different devices. Of=
 course, the result with the octoclock is way better than if I do not use a=
ny external reference. Nevertheless, it seems that=C2=A0 there are some pro=
blems with the phase sync (although the frequency sync seems correct). I wo=
nder if this is a hardware limitation or if there is something I am not doi=
ng right.</div><div><br></div><div>Thank you very much,</div><div><br></div=
><div>=C3=81lvaro</div></div>

--000000000000d9df3c05d89a993c--

--===============6621603522379573509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6621603522379573509==--
