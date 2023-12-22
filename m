Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C97D381CAB8
	for <lists+usrp-users@lfdr.de>; Fri, 22 Dec 2023 14:29:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 879BC384F0E
	for <lists+usrp-users@lfdr.de>; Fri, 22 Dec 2023 08:29:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703251785; bh=8zk4NiO2dkw+dcFEPVtB4df5MdOhQ2IFZYOz3Ef1pAs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QP3jElkcMkdfUoCNi5xKyEYlHkxvuSqgEDr6DUSDxF1qiAN21uS4GnfFCSF0Gsd3m
	 WmGE5/GQXULyyKeFLTFHv1XcG701e3gDtYkWWFxDiIY+o6fMUYzjdTu5X5qxVFpIj1
	 fHhulMCTEXuVaTM503sgcsQI55jTTTWZxtGX3S71opDRHG9IKYHBA41ldYeP3s5uQ7
	 FsmSHeq2IZA5dBSe3N0FOrG2aUDxev3eI+jZAOc2ObU27QAaN6bTnKUyNm3iVtI6oA
	 OF0MND89IugxrUEVJ1Gpu0Zs9VoioBeAwxXlE7kq73Gd7O92oodR3iB4UjafYol1O2
	 S+TH5iYBswhkA==
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B5723849C4
	for <usrp-users@lists.ettus.com>; Fri, 22 Dec 2023 08:29:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kaEa2idj";
	dkim-atps=neutral
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50e49a0b5caso2280287e87.0
        for <usrp-users@lists.ettus.com>; Fri, 22 Dec 2023 05:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703251742; x=1703856542; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yO1yGke8I1c1jfEbiaAIzVTCF3HobhDq99JazbhgGDU=;
        b=kaEa2idjFEs3/mXM6F+rxxPiCySTgQ5jUPW/L3mtFhzm8GIxgUorzRiGNBdz3WlGz+
         wM4iOK6CBfvGPE+F1KDkpS4JOq3H+oH3HhWYWupt4ygPUtySuGtu+Qn0yjmJtZeyu0v8
         /CYcF+4q92x7ngBOzJRhklD1xHKMS1oA93WqxNtwBQ9O+ShFZnLqpYVAomYiuGa2RdJS
         zsU8vAoyQfMKGp6/Xwm+k0NpQ7Z1vio7OCVpAIWX+6zLzl15vfbUw7jVT6XOpVq/GyX0
         H13w/YZ4s7PmWEKu3iJwplbv6WucvKfyKbPO9LElcl8Ni1lIVgOgeMAr/kFPWZv78nYb
         ziDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703251742; x=1703856542;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yO1yGke8I1c1jfEbiaAIzVTCF3HobhDq99JazbhgGDU=;
        b=R3KMUaQeGq8OTGMy2/FgigOF3aL26sFn+SjcdmlPwKyBa1atc69cGJGPfjgLzdWM6W
         SoIrU7QgsWa6oH9L1Jan2XmUec80rBv24XjwA/h9uJale5PIWLBWtOCR6L3RH606AqR5
         z4cT45AxekmmggJ6aOBWYGiWD3RpeelG0hpalWxsu4RoMCBTu/R3t+uhDYGKUCNJ3Jep
         NbcT1c4E2oVZ/vloYCf78xqFLgbbJ2WQJzRYTHpeZXYkiyA2VZT7n7Xh+BpKfvAXlp/m
         b7YdEE3p4Ohon8NFSSeilWca2kLDxHcxrGxziCZHvem4E0YmGeGnIUKX8OaBJnQk/ax7
         zoFw==
X-Gm-Message-State: AOJu0YypQgbEeY0JvKHwUXYCXCI625gZcRrQz1c0/Ft79Qkx/SWa8Bhw
	+55MWEv3PnVQmt2ng67HbDxg4jJpfcv9qhtt0+5YRrnyJe/mBc5Q
X-Google-Smtp-Source: AGHT+IEYwUc8qV2KNyJabXVueg9P0J0zJhJlJXIhEZLzhMc11YfIIEdxDFg7lwuKHn8MZXP8kUOLMtiFSwx0W52T4uU=
X-Received: by 2002:a19:6716:0:b0:50e:3909:fd25 with SMTP id
 b22-20020a196716000000b0050e3909fd25mr630833lfc.79.1703251741210; Fri, 22 Dec
 2023 05:29:01 -0800 (PST)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Fri, 22 Dec 2023 16:58:49 +0330
Message-ID: <CAA=S3PtuJYN95M4fCbdW+Pd6LghU-Wb0fjB57EvZMhbzFgOWYg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YNVBBLOVTMFY4R72VS5IIUZBWYHYNHPQ
X-Message-ID-Hash: YNVBBLOVTMFY4R72VS5IIUZBWYHYNHPQ
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How can solve this error in RFNOC: RfnocError: ResolveError: Attempting to overwrite property `freq@USER:0'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YNVBBLOVTMFY4R72VS5IIUZBWYHYNHPQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8906146782735026621=="

--===============8906146782735026621==
Content-Type: multipart/alternative; boundary="000000000000ff7c10060d193261"

--000000000000ff7c10060d193261
Content-Type: text/plain; charset="UTF-8"

When I want to use RFNOC block in USRP I am faced with errors.....How can
solve it? can anyone help? thanks in advance

[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError:
> Attempting to overwrite property `freq@USER:0' with a new value after it
> was locked!
> Traceback (most recent call last):
>   File "/home/sp/Downloads/rfnoc45.py", line 211, in <module>
>     main()
>   File "/home/sp/Downloads/rfnoc45.py", line 189, in main
>     tb.start()
>   File "/usr/local/lib/python3/dist-packages/gnuradio/gr/top_block.py",
> line 111, in start
>     top_block_start_unlocked(self._impl, max_noutput_items)
>   File "/usr/local/lib/python3/dist-packages/gnuradio/gr/runtime_swig.py",
> line 4832, in top_block_start_unlocked
>     return _runtime_swig.top_block_start_unlocked(r, max_noutput_items)
> RuntimeError: RfnocError: ResolveError: Attempting to overwrite property
> `freq@USER:0' with a new value after it was locked!

--000000000000ff7c10060d193261
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>When I want to use RFNOC block in USRP I am faced wit=
h errors.....How can solve it? can anyone help? thanks in advance</div><div=
><br></div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">[WARNING]=
 [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>[ERROR] [RFNOC:=
:GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError: Attempting to overwrite =
property `freq@USER:0&#39; with a new value after it was locked!<br>Traceba=
ck (most recent call last):<br>=C2=A0 File &quot;/home/sp/Downloads/rfnoc45=
.py&quot;, line 211, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 Fi=
le &quot;/home/sp/Downloads/rfnoc45.py&quot;, line 189, in main<br>=C2=A0 =
=C2=A0 tb.start()<br>=C2=A0 File &quot;/usr/local/lib/python3/dist-packages=
/gnuradio/gr/top_block.py&quot;, line 111, in start<br>=C2=A0 =C2=A0 top_bl=
ock_start_unlocked(self._impl, max_noutput_items)<br>=C2=A0 File &quot;/usr=
/local/lib/python3/dist-packages/gnuradio/gr/runtime_swig.py&quot;, line 48=
32, in top_block_start_unlocked<br>=C2=A0 =C2=A0 return _runtime_swig.top_b=
lock_start_unlocked(r, max_noutput_items)<br>RuntimeError: RfnocError: Reso=
lveError: Attempting to overwrite property `freq@USER:0&#39; with a new val=
ue after it was locked!</blockquote><br></div></div>

--000000000000ff7c10060d193261--

--===============8906146782735026621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8906146782735026621==--
