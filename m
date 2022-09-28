Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DE85EDA04
	for <lists+usrp-users@lfdr.de>; Wed, 28 Sep 2022 12:24:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9196F3841FE
	for <lists+usrp-users@lfdr.de>; Wed, 28 Sep 2022 06:24:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664360656; bh=1vn3TChbyDu2U3kr497ga5Nvl+4mBEJjTVT77rYFue8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=P/o4XkBU3pMXycIvWPsXljjHHjh7o/UjKDjBt5GwbUf4+b4CDdQmYZkuFp1D4ktKU
	 js2ouOAY+ztq0qY5dFePpr8EPvZpVjg1SlMbEbM8UYMfc6yaaymV/xtD3luCDlE4Oo
	 ISwnwQPuadJrfWAk4/dx8NI5P5AtZFhl0afpDI4BJYfb/Xwm3XmRfc9HcW6irUL417
	 WIV8fTSV7aB9n2EUfHSEierPAw72jkd38WnVIClxEqZPlWfiadjGvQ+FVa/pBS09pZ
	 ly7Ac9snIZi+frylxGEu6w+Eq+MlfURx1OVKQ4/dl43esjLt5j88fi7K47mJr+BaRB
	 Ti5YDleTWmiCA==
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B76183841EB
	for <usrp-users@lists.ettus.com>; Wed, 28 Sep 2022 06:23:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QZSOYPw0";
	dkim-atps=neutral
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-131a7bce1acso1268723fac.7
        for <usrp-users@lists.ettus.com>; Wed, 28 Sep 2022 03:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=FZ+GrxftH+/hL83qPNeSoyS+I71KMAiLCSEF1HHi8Lw=;
        b=QZSOYPw0532HZImZZ4G+Gapsalfh69V2sfoB8lUH08NBZ5cPTPqPJhn1f51OzFGJC8
         2KVTf2M2WjzSxQugiwYJiNAWJn7cYzFY2ohe4/HUybTF+IGAnn5W7DrwxYIbfTVh3C+Q
         oEdDEQ50DATJ74UjD7eBKDvPqZdOCm7rysp3hL1EK1E6MfZeXCNFuSgNw9sJ6XLtWjIs
         OlxIZlDJvQYs/Ck4Jyq99EgH4k7kO+ZVhaHp13kTiUf/AAcOJlUxhliJEqoMNNj3UJ1X
         gfYSIqOgJUAO4mV/OytoSG6si/1j0e6VnP+uo2MOMdzPTFiAJGr7XkL+iZ7gjhCuj86D
         DAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=FZ+GrxftH+/hL83qPNeSoyS+I71KMAiLCSEF1HHi8Lw=;
        b=DSv4Wy7os18GtZfmffNgE+9uwGstzfrlKp/Aoo0gMog9YK+Wz7J1m8L/yI5g84N12P
         KK9OzJ1btBN6qvz4bXsFstb/31BdiZyVcQ8/gZ0bqXhLj7g99C7YmjcKryOYSdAdWkUn
         1pARIelY354V73gELwQzXmQdSPux8HFYlYMYXodMNQV5SpZSyRELKyFlNiwbhwDus/Qx
         KBfdNPqhWPZWKvEbaA6fXqwwMlsSmdW1lVcmSORRVFe03ZX0QCyp9QjFrEa335nWebgd
         uk5C2Jwop0ZQJq6e3+7lYmq5x2hZBl9Tsd1zF4ij2T3Tl3NOCEJ1VlFzws0zsUFcmDJG
         CKQQ==
X-Gm-Message-State: ACrzQf1xMULrKdqQhtlESXCFGRavxBHJJFB35/YvWYoDFgwJ80yzVXZr
	eLJNTn7GLUVQmMNCm8Ok1aco1YPFCAK/anuAbXa5z4voz+cARg==
X-Google-Smtp-Source: AMsMyM7bWuF293D5tYGPniWnlt7osisd43WP+irHn976rXyPUV3pnm+NpgJ+amdlOhuQy6+aEVMNBnOE1P8BK8ljg2I=
X-Received: by 2002:a05:6870:15d4:b0:12b:8d8d:1001 with SMTP id
 k20-20020a05687015d400b0012b8d8d1001mr5028796oad.137.1664360602336; Wed, 28
 Sep 2022 03:23:22 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 28 Sep 2022 12:22:46 +0200
Message-ID: <CAJhOL6fAK6Qv7b+0_uLBNmZnO8eV4YZ4YS=-ACE34jDjrXVatg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: DRORLHFWHGGDMB2JZTD63MX4PBQKJV3I
X-Message-ID-Hash: DRORLHFWHGGDMB2JZTD63MX4PBQKJV3I
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ChdrPacket and ChdrData errors and warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DRORLHFWHGGDMB2JZTD63MX4PBQKJV3I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5164934057479743534=="

--===============5164934057479743534==
Content-Type: multipart/alternative; boundary="0000000000007b077805e9ba268a"

--0000000000007b077805e9ba268a
Content-Type: text/plain; charset="UTF-8"

Hi Guys,

What does the following mean?

I am getting packets sent to an IP core I generated, and this is the result
of a blk_ctrl.recv_items() in my testbench.

The first few packets are correct.

I can see that 64-bit CHDR words are correctly unpacked, and 2 x 16-bit I/Q
samples are injected into the core, and vice-versa, which leads me to
believe I have the buses mapped correctly etc.

Regards, Kevin


Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length

Time: 2445 ns  Iteration: 0  Process:
/PkgChdrBfm/ChdrBfm(CHDR_W=64,USER_WIDTH=1)::get_chdr  File:
/home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrBfm.sv

Warning: ChdrData::chdr_to_item: num_bytes is not a multiple of items

Time: 2445 ns  Iteration: 0  Process:
/PkgChdrIfaceBfm/ChdrIfaceBfm(CHDR_W=64,ITEM_W=32)::recv_items  File:
/home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrIfaceBfm.sv

-- 
Kevin Williams

--0000000000007b077805e9ba268a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Guys,<div><br></div><div>What does the=
 following mean?</div><div><br></div><div>I am getting packets sent to an I=
P core=C2=A0I generated, and this is the result of a blk_ctrl.recv_items() =
in my testbench.</div><div><br></div><div>The=C2=A0first few=C2=A0packets a=
re correct.</div><div><br></div><div>I can see that 64-bit CHDR words are c=
orrectly unpacked, and 2 x 16-bit I/Q samples are injected into the core, a=
nd vice-versa, which leads me to believe I have the buses mapped correctly =
etc.</div><div><br></div><div>Regards,=C2=A0Kevin</div><div><br></div><div>=
<br></div><div><div>Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length<=
/div><div><br></div><div>Time: 2445 ns=C2=A0 Iteration: 0=C2=A0 Process: /P=
kgChdrBfm/ChdrBfm(CHDR_W=3D64,USER_WIDTH=3D1)::get_chdr=C2=A0 File: /home/k=
williams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrBfm.sv</div><div><br></div><=
div>Warning: ChdrData::chdr_to_item: num_bytes is not a multiple of items</=
div><div><br></div><div>Time: 2445 ns=C2=A0 Iteration: 0=C2=A0 Process: /Pk=
gChdrIfaceBfm/ChdrIfaceBfm(CHDR_W=3D64,ITEM_W=3D32)::recv_items=C2=A0 File:=
 /home/kwilliams/rfnoc/uhd/fpga/usrp3/sim/rfnoc/PkgChdrIfaceBfm.sv</div><di=
v><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Kevin William=
s</div></div></div></div>

--0000000000007b077805e9ba268a--

--===============5164934057479743534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5164934057479743534==--
