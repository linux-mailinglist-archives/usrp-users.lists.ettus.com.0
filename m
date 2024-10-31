Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D81B39B7CC2
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2024 15:23:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA3723858FB
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2024 10:23:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730384623; bh=eP+bowNh7/NINq2R+LxfbYEdoYuyoPk7WmZOt9qn8zg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wDh2JzONmp3OgLQh6J3TjcL/iJc5+CszcUEsret2Cvvq51jJASv32nEM3grKNxFOu
	 +IstmNrwNskTJ94EXPLFsN56j0J0vKNKwWaZW6nfEn+9Ij7a38hSyIH8Y7TJvwuUN+
	 4SFJVcD7700SVjVqiw8D1Zu3L0Cs++nzbf4gI8HtSy7y6W041vJygIlszrEgUSNAgz
	 sIRokdkgg8B1mTXTfWoKBf6hMNM0CRQRVvau5zd6eYyUFU7q+O3re4YsNnAdZyyMPL
	 JXofqsZEZjSqkUdgMM9r9aVkdmo7XI5KPpBocH5hHCrFtzwZAPj+/1QgIpFaNcJDbV
	 wNBLoGwJOnxHA==
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 606A2384EF1
	for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2024 10:23:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O3L9onZr";
	dkim-atps=neutral
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-71815313303so482648a34.1
        for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2024 07:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730384607; x=1730989407; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rinohmRoIP03TQ1tl7uY+KXcZxPyo3wloVYt8NtNUHA=;
        b=O3L9onZrXT4onSmDYLQlGCv1swNglynGWqQ+tPu42LDfuNOMuKfBaSlP/2HjjXDMVP
         WsP/pbwi+ZyxPwPYGiABDnt1aW7E6Xq0K8EScdqbrOl3IM8CaBRg9pnNyasNvHNavmwf
         lnjBYiljkGEMxnVfXW3P98lz3V8rBPX5VigBYDFiPymJtQtcHWMvPp894cXI+HjWDndB
         P5TNgcq73y83RttZ1jnL8vCx2idqO6ImrhcIShjEFWL2WgaCnvy3Gxiz6XG95FGm+n0y
         u4T8AGjVIJvG9ptJpPoZuPPEarAveYp6+awXMrBqAEN8v1Bm8kurbUHDy6r0qU8+DpSh
         /CfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730384607; x=1730989407;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rinohmRoIP03TQ1tl7uY+KXcZxPyo3wloVYt8NtNUHA=;
        b=aHQd5OGgrmyeK4+YTJy+cPJtI0Fk64qI7rjnV4FeOuo9f5crvgPdzEhn4wWFROpwid
         Rq0LzeDwde2bbuYsVQkVKA2W/ez7ypX1gmMBKA96K1qJEJrx7MGOZLL3pZsYODG/zugx
         m7uvtFer85iSQz1+7/MxeE9Xsem/hyFtfhdtGxZTw3jGL9uDqKGkLEtq0QeOQAX+B8+6
         vd301Fo9N+ptvN9IPEnnDZl8kMmHDCVAfJbd0hlv5eiCopBKSPs8tPx1jAOO/PJMpX+O
         3MKIhJPyl+WO0b2FhdnddyRyGMFWnANBQ5PDtBNra/HJWEXv/ApvXqZPqLsXAVdwXBX2
         Rr+g==
X-Gm-Message-State: AOJu0YzeVsXLzQroYua0Ri/lfDDKn6sxbR9hYsPZouBos/OjEZynggZb
	IwRx1ybaeep8Ls8mIGft49guM8s1rsp0SVJ+G0VXV863RnDA3POiwmiTKwhjleHhY+mF6jWmz+6
	ZT+eUXyeQzoUWgQzBY0ou5PZLlRMf+JmLb9tF2w==
X-Google-Smtp-Source: AGHT+IGCap12v5ODkS97P7vl8iXkdjZA5mDs3A8/BiU+DJJn+VNp9GYBZyD10BvFC4zuIxZuXyWSqrjiHo8wUj+4DUo=
X-Received: by 2002:a05:6830:4997:b0:718:f57:11ea with SMTP id
 46e09a7af769-71867f196a4mr16816442a34.3.1730384607540; Thu, 31 Oct 2024
 07:23:27 -0700 (PDT)
MIME-Version: 1.0
From: Andrew D <sciensfpgaeng@gmail.com>
Date: Thu, 31 Oct 2024 10:23:17 -0400
Message-ID: <CA+0p0ZS4nzv6581RcTSbvuomn5me5CzRM-K1aza7aTSdYOjazg@mail.gmail.com>
To: usrp-users mailing-list <usrp-users@lists.ettus.com>
Message-ID-Hash: GGR24O4XORKR6SWBD7LTYS2SMFEK3LH7
X-Message-ID-Hash: GGR24O4XORKR6SWBD7LTYS2SMFEK3LH7
X-MailFrom: sciensfpgaeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 RFNOC Endpooint YAML Configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGR24O4XORKR6SWBD7LTYS2SMFEK3LH7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1631811741901137005=="

--===============1631811741901137005==
Content-Type: multipart/alternative; boundary="000000000000db7d5e0625c68ffc"

--000000000000db7d5e0625c68ffc
Content-Type: text/plain; charset="UTF-8"

It appears that in all of the x410 and x440 image core yaml files, that EP0
is the only endpoint that is configured with `ctrl:True`.  Is this
necessary and why is EP0 the only endpoint that requires control?

Thank you!
Andrew

--000000000000db7d5e0625c68ffc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It appears that in all of the x410 and x440 image cor=
e yaml files, that EP0 is the only endpoint that is configured with `ctrl:T=
rue`.=C2=A0 Is this necessary and why is EP0 the only endpoint that require=
s control?</div><div><br></div><div>Thank you!</div><div>Andrew<br></div></=
div>

--000000000000db7d5e0625c68ffc--

--===============1631811741901137005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1631811741901137005==--
