Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D278AE72C2
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 01:01:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFBBF385BBF
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 19:01:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750806084; bh=j4mh58Bf0eislzH1IAlnlxk/h1DbZYfmAtO78uL7yx0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZAVDcTSEwvjV/GjsgBRs4j6Ey2DIjTQNVaXjD0Gdbw7TSZuhr0XI4ogfTPGcvTf6e
	 lm1/ktjo88Ph8WL55W5pc/VKdvLsHl5lZ4FpBEWKLsSgaMbL3HOq03Pz0/ZE0zcHdq
	 dOfH/RsNJLY+C6iqc2/Loa23lPkUnZHpf3qbCpKMsFKARrwHfB3aBYt1nqSYEvzPQJ
	 N/Rc45lZov4LgDQoxGVqmjfyWKYgMGDqz/HddTkSbs5U6PMk73+rdD8VTFAVgc+3E2
	 IEtRp+oL+vLo6GjxfKk4ATliegc4tRt4FFNZoNX72olTEzgFqHr53Pb3kaiqmYA6Qt
	 10IRuOBJ/LjPQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id AFE6C385513
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 19:00:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FWg0MzHF";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad56cbc7b07so911493466b.0
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 16:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750806014; x=1751410814; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Nr71T3dG1soCVfyK0xh6fWVGOtif2N5U1FmlexlDzIg=;
        b=FWg0MzHFfb1gQoM3KeZQsI5SGQ1CEW2kfxhbYthdQidq+CQ5Wm2aQsY1tODLQWLjDO
         do3e3qHlMcjCj3ccwDxdJ3Auv/Tp44Wm8Uv8sp4og1WDI8wXYPzdLHXvjd7MJOqHb/yn
         TpgQ9qAaoBOJrwnv4+NhD1uSBoqZv5AW+jWA1t7OU8BqhUUGA/mUQjcKwNarmNNMYHQD
         e1+lIc7N67eSxgwiifsrDIWEo6gQuT7qEXWOtvYKVnw9QZN38Tsu4QmpIj1qH8KbIQJW
         HqsyDn2BkuiRmaFptIGqc83ULZ+PA+NrHX1gy8YuUctHAveZMroHRHxWbytu6zyj8jS7
         IaWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750806014; x=1751410814;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nr71T3dG1soCVfyK0xh6fWVGOtif2N5U1FmlexlDzIg=;
        b=vvDVPdny0Ri5VLJj+MKyKg1RCt2bqy+BU70LAXNoQyvfvXy9YjeZUslYjM5ijx4FAn
         kZJTO4+RJ9ORPJWzYoIdiw9iz6HVaFtMKQeOliiT4T8UMoLtj6MK0AkpP4Lfmm2qLzzs
         t55ymBJEWI6mZO8JlxMwrgvfotH9iMLlfoDMqA7UElttPz2Q+t7n9jDYm4K9qtK34Ien
         A+TGYNI9bmN89GgMKNyzSLXUQ4xsZluFYaEMs0mSw3IKvQGd+iCVydoHRJLYzUH1Cerc
         qlp2MSHmnurAPAT6kcdBugnKF2SJ8SkYRkMskJ7IzH0vDj+am6MrQsW1Hgd7Ry64FLfr
         ksZA==
X-Gm-Message-State: AOJu0Ywy1lKD9SqTx3lioi3anEqvnCCFYQXOZu4e/SUhn/+NVO38eeDF
	fpKATtcSylvr/SQWSCd+kXCKR+PNAsC8nXivmsAxK1xCKPmft9FkwtHsiEQ8jLsUeJydaCvZwO2
	ZDGmQDbGrh57kiwaIjNwK4K/satHlAehhatGv
X-Gm-Gg: ASbGncvxuNIb+URd+kghHSji+CLbpRtY1rjMKqW/95eFiDxRsL4yDV93263AcnyjZxT
	A0ngmfmFfKYwnktUonZ71832/JoZz4PriVIKDAYGbqXe4jXM2UUZ0CK67GObTIiZxNnPPxCGuFr
	5UFmkyCgSwe5CqwmkHmHo6qd8EMc8TIQdUU/zgXEtjQJMo2LPf
X-Google-Smtp-Source: AGHT+IEli5fpMUMiRt4g8jvsdQGckdeBfMx+ku7CgD/wy85+W14U03IpF/sgawQW4J/yIfbHct/Snk2Ldaobvhp0F2Q=
X-Received: by 2002:a17:906:730a:b0:ad8:914b:7d0b with SMTP id
 a640c23a62f3a-ae0bec2a744mr87803866b.11.1750806014174; Tue, 24 Jun 2025
 16:00:14 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 24 Jun 2025 19:00:03 -0400
X-Gm-Features: Ac12FXw3rbR3ME38NZl46ZK4MUw1rHGWpAu4jfAafn-9W4E7D9DLiVaUtcRopuA
Message-ID: <CAEXYVK7ZMeZHu-V+DHOqHzTXjFuXYEvV2zMREoBssfBQKzzJUA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: GFARJBWD7RMLVSETZ2C7SX5DO4S7JEUD
X-Message-ID-Hash: GFARJBWD7RMLVSETZ2C7SX5DO4S7JEUD
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Remote Streaming Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GFARJBWD7RMLVSETZ2C7SX5DO4S7JEUD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5628630365134530938=="

--===============5628630365134530938==
Content-Type: multipart/alternative; boundary="0000000000008bb6c30638594a4e"

--0000000000008bb6c30638594a4e
Content-Type: text/plain; charset="UTF-8"

I am trying to solve a remote streaming transmit problem and I am curious
how this might work in practice.

The setup is an X440 with some custom transmit blocks. I have my baseband
processing for transmission being done by 8 different computers - one for
each antenna. I currently have a similar block structure like the radios -
2x custom TX blocks, 4 antennas for each block. A single streaming endpoint
for each TX block, 4 outputs for each SEP.

I want to modify the X440 to start up with my graph committed and running,
and the 8 different computers can stream to my custom blocks to transmit
whenever they want.

The issue is going to be figuring out the routing for the endpoints, and
the sequence numbering for the packets coming in. Since all 8 machines will
be separate, they will not adhere to the sequence numbering for the single
endpoint.

Is the solution here to utilize a unique endpoint for each TX antenna and
just "know" what EPID will be assigned to that block? Is it always
deterministic for the EPID to be the same?

Is there a way to get a map of EPID and block ID? Are there other pitfalls
that might make this a terrible/impossible idea?

Sorry for the questions, thanks in advance for any insights.

Thanks,
Brian

--0000000000008bb6c30638594a4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to solve a remote streaming transmit problem a=
nd I am curious how this might work in practice.<div><br></div><div>The set=
up is an X440 with some custom transmit blocks. I have my baseband processi=
ng for transmission being done by 8 different computers - one for each ante=
nna. I currently have a similar block structure like the radios - 2x custom=
 TX blocks, 4 antennas for each block. A single streaming endpoint for each=
 TX block, 4 outputs for each SEP.</div><div><br></div><div>I want to modif=
y the X440 to start up with my graph committed and running, and the 8 diffe=
rent computers can stream to my custom blocks to transmit whenever they wan=
t.</div><div><br></div><div>The issue is going to be figuring out the routi=
ng for the endpoints, and the sequence numbering for the packets coming in.=
 Since all 8 machines will be separate, they will not adhere to the sequenc=
e numbering for the single endpoint.</div><div><br></div><div>Is the soluti=
on here to utilize a unique endpoint for each TX antenna and just &quot;kno=
w&quot; what EPID will be assigned to that block? Is it always deterministi=
c for the EPID to be the same?</div><div><br></div><div>Is there a way to g=
et a map of EPID and block ID? Are there other pitfalls that might make thi=
s a terrible/impossible idea?</div><div><br></div><div>Sorry for the questi=
ons, thanks in advance for any insights.</div><div><br></div><div>Thanks,</=
div><div>Brian</div></div>

--0000000000008bb6c30638594a4e--

--===============5628630365134530938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5628630365134530938==--
