Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F090628590
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 17:38:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B105380E49
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 11:38:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668443910; bh=jYoopFfY6q85sqpcW2+anSXojNC9d9ZVtyC/DxW9lI4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pOBOTSCJuLwTbrRk9yU5P3rdLDbgH2W4bMEsKwOH2Z+oIyCEM3AuAOW/KefMRZ1zL
	 RAksXAsCmsMVrB00iNEAhsqSsYyoej9aXJ6jj+AHeoSFjaF2QYMBQskMemwleQfU/t
	 GAxKPdURLAg60dj3VA+tfnRM+y0RSV+5bLHoztShsxhH+xHkIENLnqZCqwkpNwKthk
	 h8ccdcE7A8USdPXDEb0T7XbdfeKxjSgjqK+WVGLxbEiQAbnMyU+CjZ6BtCZyhRqIrV
	 hfFNHWCs40fefFQRaZCGbs0740TEVTWLZTBGzLFj7ET+8yLbXOp/OO5Ii7o/8xBJf7
	 X+Cu0LZ1KtZNw==
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id CC092380987
	for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 11:37:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="K6pSY1tc";
	dkim-atps=neutral
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-382f0906929so20214717b3.10
        for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 08:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2dsVZDC07T2jxltLZ+MA4A7RJtX4EMRk8ZoekMBWv9o=;
        b=K6pSY1tcK3cBFiqhv9h5f1p34xald227zFVvZ6PHOZSWzpvvc1DqvnS+tyMSTaFgSS
         ug+73HPokhuhL2W5gEdww2Y7CZqWgCYwdzCNhXR+Uo42cZ6zSGZgCES5b2uj4/ALo8F/
         RVuk2xp0TYdiChX2aZYoqmX2SddDF0I425D7pd8goTTk1ukgM5fg1r4akCSaJZmpdVkx
         aqkw3pedu4I2+HigPrqo9ec6b9R7hPblqgxDIZ7OG7059BW07NxfVDyFoBHe/jaP6VWl
         dxnCfgoHxVOuqAYAIm+l27f9RPwh/wQCSetWHLfbAZ/KCN2zK3i1eR/LTEwXvkPan1BJ
         SyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2dsVZDC07T2jxltLZ+MA4A7RJtX4EMRk8ZoekMBWv9o=;
        b=peD9jcL+cOD1hNlYFeH7CTHRlR7CMr2iJTRezlMc1SEccbCYisF+zmYGfLPj/rnX3O
         6WWLffDB+BhJR2vAY/gjbe7WcRadNch8sxVUjcXr9modwe8M+bmkGPs6oZ9+z0i2i/IM
         OWg39v92PhTeMe3s/BZ4zxuwIwGrIm62FU4qI/Xsz7pfXjUD1gf8eT2rteeUuIy0gQSx
         fnX9/xZ3KO6v3YVaVrUEu+uKb0jAAEnt1xhftis6lwTE7aTPtkdOnwHkKg7a4VtaHamj
         pzVicoZwS67KyRfUpHFHeHvuB2Yi9XAVu9YOSGuaPP4UDgejDVpo5HqAu/Pw4NCRepdx
         g4nQ==
X-Gm-Message-State: ANoB5pnY9sSEtchQK7WxjGo/44JgX04QEk9y8a6A36PKVlXEro1mpk1a
	Z4hnL6SVxlUtPTlioDMP3pcTPA6+B6s2K1pnm8PmF7eHX5a9tQ==
X-Google-Smtp-Source: AA0mqf4oUR4AoQXaOzDx238dIYsRBJQZ/yAgUiwQ3uyojQLsuVUytJxP6Z4iRYoxhCMJrFiGItdTk9SS+7MPrc86ohs=
X-Received: by 2002:a05:690c:255:b0:365:2229:a799 with SMTP id
 ba21-20020a05690c025500b003652229a799mr13804951ywb.262.1668443824708; Mon, 14
 Nov 2022 08:37:04 -0800 (PST)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Mon, 14 Nov 2022 16:36:53 +0000
Message-ID: <CAA=S3PvXr0FH_K7UaVf0qRmTW+yfxf5XCbFRmsVt00vN1yr41Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: AJPANRWB474CYY3DT57MWPKEHWBHSWUE
X-Message-ID-Hash: AJPANRWB474CYY3DT57MWPKEHWBHSWUE
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How many user reg we can define in a RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJPANRWB474CYY3DT57MWPKEHWBHSWUE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5381995335764063751=="

--===============5381995335764063751==
Content-Type: multipart/alternative; boundary="0000000000007fe33905ed70d9ec"

--0000000000007fe33905ed70d9ec
Content-Type: text/plain; charset="UTF-8"

I have developed some RFNOC blocks. I had a question.
in an RFNOC block HOW many user registers can we use? can we use three user
reg in a RFNOC blocks?
Thanks in advance

--0000000000007fe33905ed70d9ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have developed=C2=A0some RFNOC blocks. I had a question.=
<div>in an RFNOC block HOW many user registers can we use? can we use three=
 user reg in a RFNOC blocks?</div><div>Thanks in advance</div></div>

--0000000000007fe33905ed70d9ec--

--===============5381995335764063751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5381995335764063751==--
