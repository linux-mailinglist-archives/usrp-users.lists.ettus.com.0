Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0BF6FB223
	for <lists+usrp-users@lfdr.de>; Mon,  8 May 2023 16:03:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A46B383F02
	for <lists+usrp-users@lfdr.de>; Mon,  8 May 2023 10:03:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683554615; bh=/IBP/GHdswMFRAEMHlWb7EIRkEs80mdkqLFPyjO/+dE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eCDujpi82/dpIDIbf/NBS9NcFlidJrygKkxST55kSWrG3g/B9OJQCFHSBuj4BjFV6
	 l2sIQ1rBJ2Og7KvQTAmusbnuL1lZ7rrYZNdGz7OGKpWQsh59SMANbZ5cyg0AamqfuW
	 tj1ibBxNksB7KaE1TG1auy3xm29XrBQbtRZYAERQcpVtcnfLesB0N+q7b2Alh8Zjdj
	 MlJ6ccqNOfehND9MlTHmPCloE8IWiX/+0FhDe9mgXuUi2uubZgbHahyQ752/Kvh4qd
	 xsQmNQ0cTQuiGkzv8eAZTBD5SrDNqJzqLpNOLuQ6Jy5c1Q/w+SJ4GPEedVd48DemTB
	 2oZQ2EUd/m/8Q==
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 19360383DD8
	for <usrp-users@lists.ettus.com>; Mon,  8 May 2023 10:02:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EmBh6PNw";
	dkim-atps=neutral
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4efe8991b8aso5268380e87.0
        for <usrp-users@lists.ettus.com>; Mon, 08 May 2023 07:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683554545; x=1686146545;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AUYdJiCYzc/r2cOHu0C34ko3BRHnQiKlVVWhsfjsoXA=;
        b=EmBh6PNw2Arr6RWDel0Ecny0mxQvAwVDCEWCB8R2G5HRyY6mqQfNDKGnMiNGw0mVPv
         C3NjrfKuj9ee6WW8QKxp22fsMkHHjBpWbF3MgvSO7TQifD60fKJljJbXeSuqcnVibjCj
         TnyeXFFmXHquxqo9dJ9dic3A5Ukmg2QXny3EJPKqHWRK1vCVkJXKYj1v7SAvmTxUSW7/
         dsMKwFjtm+fuRV5SatIGww6aOigxFffy86AekcWYage/rjfKs3JxAm266uz43IV2yJKP
         jm46/gt1lJXgtKrfQyd75+HPkEGjqaFlMDIp9U/yUd+5cpl/d7/6MJ9BHG8wbPCG6nH7
         PEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683554545; x=1686146545;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AUYdJiCYzc/r2cOHu0C34ko3BRHnQiKlVVWhsfjsoXA=;
        b=Gimw3zS1FXyyI5I8ppGFhKr7Ek8kUkYXRjy8SgslTUu+U++TJIZksVkHy8ImJnEVIZ
         n0fBj15d49zM9XHtqz6QAYg7AtB8iVYirA8VWqttnTSIz1uORTuMcqQaDU2WwV75Wohn
         kWobzZdxMx1AgvmfxBKHu3yPpd7UNfSLhJaKuKYK2X39rXN8TJeX9QG6VWJq0XumXCIP
         ngDRNk4QXwVkCnCW6pf4WC5/BnnuzBZKYllaQY3T3DnG7R17I2YHA8NtqPxk8Luo7Y8M
         DgMKNGw0LGCDMEisNxc0Uy8wz2xPb3t9AW9wRko3GaLYCXW+6ihbm0Zw9YYAn+LcOjcx
         Tw/g==
X-Gm-Message-State: AC+VfDyYEVzJj63a617og1RRbKIEml5m9+T/vAMaCtazpkaAMfFIOFjF
	cd6M7Tnc1H2aKgmnrAjOnXszyeceO4rOQkNxWxqrmu8E
X-Google-Smtp-Source: ACHHUZ6hyGe6QjgROdaI4+26t/dBrPpg020DcLQUongfqVtxkWqddSHGNXSKLYx5DpR3t8w0Q7dglrI6Vsd6GOCbL84=
X-Received: by 2002:ac2:4428:0:b0:4ef:f670:3bd with SMTP id
 w8-20020ac24428000000b004eff67003bdmr2570189lfl.18.1683554545497; Mon, 08 May
 2023 07:02:25 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Smith <aarsmith54@gmail.com>
Date: Mon, 8 May 2023 08:02:14 -0600
Message-ID: <CAH2Hh72v_VNihdeC2H5__G02eTf+b=i4og+9VNg9mcGu+nhyVw@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Message-ID-Hash: IVQQPH5IPFWRKJCAQ6TBICHBRY3X4OL6
X-Message-ID-Hash: IVQQPH5IPFWRKJCAQ6TBICHBRY3X4OL6
X-MailFrom: aarsmith54@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Time synchronization over many hours
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVQQPH5IPFWRKJCAQ6TBICHBRY3X4OL6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9030758676805337994=="

--===============9030758676805337994==
Content-Type: multipart/alternative; boundary="000000000000a4f91e05fb2f167f"

--000000000000a4f91e05fb2f167f
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I am using an X310 with a UBX-160 daughter card to playback many hours of
recorded samples.

After a few hours, even when using a very powerful server, some underflows
accumulate. This impacts the timing of data being played back. In some
cases a 24 hour playback will accumulate 100 ms of error.

I can obviously solve the problem by periodically stopping the flow of
data, and realigning the sample stream and the radio clock, but this isn't
desirable. It would be unfortunate to drop seconds of data to handle a few
underflows. Is there a standard way to handle this with the UHD API? I'm
calling send() on the tx stream with 10 ms of data at a time. If I use a
time spec for every 10 ms buffer, and an underflow causes a late packet,
will the X310 just drop the late 10 ms of data, and realign itself on the
next buffer? Or will every subsequent buffer be late? All of the UHD
examples only ever set a time spec on the first buffer of samples, which
suggests this will not work.

Thanks,
Armon

--000000000000a4f91e05fb2f167f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello everyone,<div dir=3D"auto"><br></div><div dir=3D"au=
to">I am using an X310 with a UBX-160 daughter card to playback many hours =
of recorded samples.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Aft=
er a few hours, even when using a very powerful server, some underflows acc=
umulate. This impacts the timing of data being played back. In some cases a=
 24 hour playback will accumulate 100 ms of error.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">I can obviously solve the problem by periodicall=
y stopping the flow of data, and realigning the sample stream and the radio=
 clock, but this isn&#39;t desirable. It would be unfortunate to drop secon=
ds of data to handle a few underflows. Is there a standard way to handle th=
is with the UHD API? I&#39;m calling send() on the tx stream with 10 ms of =
data at a time. If I use a time spec for every 10 ms buffer, and an underfl=
ow causes a late packet, will the X310 just drop the late 10 ms of data, an=
d realign itself on the next buffer? Or will every subsequent buffer be lat=
e? All of the UHD examples only ever set a time spec on the first buffer of=
 samples, which suggests this will not work.=C2=A0</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Thanks,=C2=A0</div><div dir=3D"auto">Armon=C2=A0=
</div><div dir=3D"auto"><br></div></div>

--000000000000a4f91e05fb2f167f--

--===============9030758676805337994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9030758676805337994==--
