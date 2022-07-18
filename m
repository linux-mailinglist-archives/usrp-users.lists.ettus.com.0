Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1BE57794D
	for <lists+usrp-users@lfdr.de>; Mon, 18 Jul 2022 03:39:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D556381522
	for <lists+usrp-users@lfdr.de>; Sun, 17 Jul 2022 21:39:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658108368; bh=DFtTvzVj+EB2Q08o1YLohhbrUPVBbax9365aD1jQnXA=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=fJOxaMtZs0idbRneghHXG1r6rfVSiZI9yUMqPEPb/zMvU2AFXack/qJbzp1PaDfJj
	 tjSACgoyto9XxcY5THpnha9EgxhP8lrgYE/qYuzUQA17hy6DsEG+YStv/hMIECOnqc
	 BNi7SRUUfkYgsu1MHl6qXkjnaw3UZHf/x8J929SHYTunouzJ1OyvrROtofuR5bE4RG
	 0o70e5ihdHp2qCKXeUioRdJXzbhTg5uFk8bss2J8DGXr8oXfAKFHftnHbnWgPv7rh6
	 xATrPX0VLtOAYL3F/XzWD4POHnJVYpHIZgf7P2fvoh1hxUaiCX/o7SDLpkXIUCbQLv
	 ZvoDKP5fX3O9g==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 1533B38120A
	for <usrp-users@lists.ettus.com>; Sun, 17 Jul 2022 21:37:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ieee.org header.i=@ieee.org header.b="DR99d+ka";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id e15so13398635edj.2
        for <usrp-users@lists.ettus.com>; Sun, 17 Jul 2022 18:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=9yK/7GjNKoNUXPcODRgz5/HsoBtHKZx0JzwYbNeMddU=;
        b=DR99d+ka345zGe2pKnVeR15MOxmCRjcyPNwVBsEkqEvOOJa9MK7qm7BtqpqE9A/qKL
         2/jQ9sDRTeAKzrYcPF4HmsdpSElwBfM8VKxDRA5ez8nLLcv8kF23qGdelc4/rYUCj2Za
         iUaGlNWrL3McBXTKSRv+k5xBtLn4P2Kyr1hoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9yK/7GjNKoNUXPcODRgz5/HsoBtHKZx0JzwYbNeMddU=;
        b=3/eUEQ6kNSybSe1eOXtszNE9jC/SeOiV326WAucbVaKHHZOeO/uIQDxKQTvKFA/4NM
         I6qXI00+v98CvzwyX0NId1eZo7Q2bL/o9f60EfjoetdKVVw2wVOdEa47qcSqn0H9VxDo
         W/JYz3FRyWl4zxBimykGPcoohffoYlsBfuc3enMkwKDJXGAJRbxovPaBprlPkS8ynoU9
         UipDioi+a2o9iDX7S+9YS5sDkZbLkvU9iiCpIIV1AZX8oGlB7fLEJAEAkOG1EhXdmLzg
         CpWDVgxPvkCLVyaescHWgvvVCVtZKLLOSh8Asszs2q1D3VuD57xyBLfjsYNVXm3lEeW1
         aU0A==
X-Gm-Message-State: AJIora+gDoqe8P7Y1ZKXXV0ZZOBqKKk8VjJHyjGRUVc7oMZK5SD05VQL
	FtIYB7F4VVNQIP7b4I+N2AC3Y7WxxzXFHfE3/Ybh5AJvlp0=
X-Google-Smtp-Source: AGRyM1sqxhZyY4EUqxWqULI3oNcY+LdLlvyfeC0dUptr519pgVi+fRKHn27VJCZVfR1L9w82am3s1WDEMrirUgnaBiA=
X-Received: by 2002:a05:6402:950:b0:43a:5194:174c with SMTP id
 h16-20020a056402095000b0043a5194174cmr34321532edz.145.1658108267662; Sun, 17
 Jul 2022 18:37:47 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 18 Jul 2022 11:37:36 +1000
Message-ID: <CADrcXBRpjGjD7uK2x+tmaL_hxsJL5knQ-TEiZx9ZYbXHTU7XOg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DUT7YSKBUNV3TA7OIQJCG5JAKKRC2CUW
X-Message-ID-Hash: DUT7YSKBUNV3TA7OIQJCG5JAKKRC2CUW
X-MailFrom: efardin@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Daisy Chain
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUT7YSKBUNV3TA7OIQJCG5JAKKRC2CUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ernest Fardin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ernest Fardin <efardin@ieee.org>
Content-Type: multipart/mixed; boundary="===============0915729887430058094=="

--===============0915729887430058094==
Content-Type: multipart/alternative; boundary="0000000000004b26c805e40a6a38"

--0000000000004b26c805e40a6a38
Content-Type: text/plain; charset="UTF-8"

Hi,

Am I able to daisy chain two X310s using the second 10 Gigabit Ethernet
port with a 10 Gigabit Ethernet cable
<https://www.ettus.com/all-products/10gige-dc/>? This would remove the
requirement for an Ethernet switch.

Thanks!

Ernest

--0000000000004b26c805e40a6a38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>Am I able to daisy chain two =
X310s using the second 10 Gigabit Ethernet port with a <a href=3D"https://w=
ww.ettus.com/all-products/10gige-dc/">10 Gigabit Ethernet cable</a>? This w=
ould remove the requirement for an Ethernet switch.</div><div><br></div><di=
v>Thanks!</div><div><br></div><div>Ernest</div></div>

--0000000000004b26c805e40a6a38--

--===============0915729887430058094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0915729887430058094==--
