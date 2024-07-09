Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B77892B5CA
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 12:47:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EBDE383E7A
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 06:47:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720522051; bh=ZPKaWXzog/X3cShgXGhSOpDReet/WdbzAYj1LFy4LFc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dOLtaTeeheSJnN5wzEu7gObp9guWWwZuCy6C/k9ET1qpgqWg9A+1USdQz5RShpxiU
	 0bRbn9EbE19XCQLlExZmjLHBr//0RSUlMkU4L0CQVwKz9fMn1x+6gH7s2rz/kFy4tL
	 safp/JMIimwFYQ6wG9vpUpQOElbWrILuSal1Z3v3CR70cHlYPhFhnukGQRuYXkI31k
	 t2ieG0NDIks1S2SJZHiOy5QiyLMdOLoE5qSu70tVlWOYvWlfHCj3bmKgeNc5nqhvgt
	 uNWMpqdMU1mrgFVCtP8OmK4Wmd/sV8ZpOyYnj3gOucCwLr/UH7BbB89xUqu87eA5JK
	 sweGrQfqjW8Nw==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id E3A823817FB
	for <usrp-users@lists.ettus.com>; Tue,  9 Jul 2024 06:47:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dvDyu9du";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a77b60cafecso579793666b.1
        for <usrp-users@lists.ettus.com>; Tue, 09 Jul 2024 03:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720522020; x=1721126820; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GPKXAdpgEOqmZRp5W17z2z+jC5VZ1YUURRo3o1xCnaM=;
        b=dvDyu9du3TA+CNeeYjt4gpRZy/PKk1FRkClmcJ2I01zNOVQkL3vT4eyME6LrawuvUU
         QAoj3N1NlRrde4vfn/p6HNs9xQXiPRO02YW7peUI23bkkNlMdL8x3J1xnAMSAAEyK8uO
         szTu+cdGbvjYnqWEprPWApY6Zq4KGfv7FZTAJOyN+O/o9O97AxO/bpgsdA0kPsvw3aJf
         NFso0VWLo9JyOdC9+tI/7kbCYBlevSCPKz/c+WmpsDPFqGOhD1kjorfST2/shfU9eNni
         Q3GOEOreqZXRiSeUXawV7CwaoawomciUMNaiKFWgpIml2iJObCE9/yMr/WP+GPlh5WH0
         PsvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720522020; x=1721126820;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPKXAdpgEOqmZRp5W17z2z+jC5VZ1YUURRo3o1xCnaM=;
        b=sHlpUIxHnHvA5y/HPcjUXIz9sWHlCgpXfAuuouKFMoX/IjcJ8XsHHiYKHh7my9HRW3
         GBM+cODk3QgddnVcc2TmMjS8sPV0PPQOZIyPQPi1q1tLPTksFzSPT6zedJ9IEQoOXQao
         zPkW5495lR23BwdUMn285LHQLdfo/vGlmfiz4sVRRmYa1N0WkPaBumH960t1CfZyBy07
         3Jp5NDEEl0Nej/evKng4tHrttQ6Or/QAKAKYAQZPDaNSO1iyqW/AdIc7cBEvKgNzcznf
         BMErqFz82qfgjgHsrhesRFNgbLaaCFSgXenczHMdpBXBO7qQTQwvq6wwN/0IjiQz5gqO
         kAAw==
X-Gm-Message-State: AOJu0YyIWCWt74QwdrJa5cqtVUFLrZpU8UP5Cqjh5QpSr382NJBhEVmh
	VKUam0cEVWSuK+EP5JasyG7N1Yl+n7QA9mq3T+N30VQ8PPMvDSbpBj0f1+ETuUoL2raiHVxc01L
	T3qk8Ghx2bfu2jjO3qllesJxFP07aosxx
X-Google-Smtp-Source: AGHT+IE1oEowLUOmk4BWNt64CQSilkPIXfbWoyctT+nt3x9kYWRzgBka3QlvlcYnDGSZ3FQ3/ec1iywj2UHOiXPRLqE=
X-Received: by 2002:a17:906:3710:b0:a72:8a62:65e7 with SMTP id
 a640c23a62f3a-a780b87f063mr140662066b.57.1720522020135; Tue, 09 Jul 2024
 03:47:00 -0700 (PDT)
MIME-Version: 1.0
From: cyberphox <cyberphox@gmail.com>
Date: Tue, 9 Jul 2024 11:46:48 +0100
Message-ID: <CAOkUcStADVm4oQMBjYHf34hjBGaToPiJudURAC1ngjOFbiYVRQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: JQOUGK5FF5M3D7FHQDCY3PZBC7JLMKTM
X-Message-ID-Hash: JQOUGK5FF5M3D7FHQDCY3PZBC7JLMKTM
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building custom NOC block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JQOUGK5FF5M3D7FHQDCY3PZBC7JLMKTM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4860677943291255574=="

--===============4860677943291255574==
Content-Type: multipart/alternative; boundary="000000000000d6a9a3061cce3fc7"

--000000000000d6a9a3061cce3fc7
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have recently taken the plunge and updated from UHD 4.0 to UHD 4.7 and
have encountered an error when trying to build the FPGA with a custom NOC
block. This is what I get right after issuing the build command:

Traceback (most recent call last):
  File "/usr/local/bin/rfnoc_image_builder", line 58, in <module>
    from uhd.imgbuilder import grc
ImportError: cannot import name 'grc' from 'uhd.imgbuilder'
(/usr/local/lib/python3/dist-packages/uhd/imgbuilder/__init__.py)

Thanks
marino

--000000000000d6a9a3061cce3fc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I have recently take=
n the plunge and updated from UHD 4.0 to UHD 4.7 and have encountered=C2=A0=
an error when trying to build the FPGA with a custom NOC block. This is wha=
t I get right after issuing the build command:</div><div><br></div>Tracebac=
k (most recent call last):<br>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_=
builder&quot;, line 58, in &lt;module&gt;<br>=C2=A0 =C2=A0 from uhd.imgbuil=
der import grc<br>ImportError: cannot import name &#39;grc&#39; from &#39;u=
hd.imgbuilder&#39; (/usr/local/lib/python3/dist-packages/uhd/imgbuilder/__i=
nit__.py)<br><div><br></div><div>Thanks</div><div>marino</div></div>

--000000000000d6a9a3061cce3fc7--

--===============4860677943291255574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4860677943291255574==--
