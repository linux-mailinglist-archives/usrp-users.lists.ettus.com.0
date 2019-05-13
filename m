Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 631901B7CB
	for <lists+usrp-users@lfdr.de>; Mon, 13 May 2019 16:07:59 +0200 (CEST)
Received: from [::1] (port=33422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQBcN-000788-PB; Mon, 13 May 2019 10:07:51 -0400
Received: from mail-ua1-f47.google.com ([209.85.222.47]:45911)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <danielozer22@gmail.com>)
 id 1hQBbp-00072P-TT
 for usrp-users@lists.ettus.com; Mon, 13 May 2019 10:07:47 -0400
Received: by mail-ua1-f47.google.com with SMTP id n7so4830202uap.12
 for <usrp-users@lists.ettus.com>; Mon, 13 May 2019 07:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=5nnHqreQJ0uYneJJlV53eP04LFRTqPy8ny7kfqUsTiI=;
 b=vHfPFEzJHnyBOcy2ruZ12hyXk3GXh1CE2LkxT0facU8iA1pamjX+DTLP84kf61yzCx
 6HZW4E7gzCv3qY6S4eiFR8vt6H+OP1Udm8X5cxGYzwfZuEqCCama4cRymO3OcwwnsURp
 ZIQ8B7khXhnEUHsUZpUWebYo21A4ei4sYuNCu1tdo/MZ9ueG66Uw1agQxU3KOTZ1n9Ib
 3N5EaVklJlKCKgv6jBTIrAn4IKVpJ0K0fn5SovjljUsqceadyiKPXTwfmDwfkbGnT+Jd
 eL1aBNTCpmqcD6FWuD0JFnkKY0AkNaA5MC8vPCuEFDh6kDwBp8jjHbnq3ZfQWcakkydW
 sADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5nnHqreQJ0uYneJJlV53eP04LFRTqPy8ny7kfqUsTiI=;
 b=oG5LnNrKTir/HQuCRQg4VVwmTuUM9MNr6L4+5W0sbBnsXz1X30rD9R2f/UyIRO3dXp
 GnvuSUjBEpWbgZmf2oRPF7dx6np3UZ5efvOcDiBljTMypywmpG8RQ1U06PiPknI8zhxu
 aeLpMra3zODlX8myXGt/PjlzEfcGkddZuz2ulZaQHOz88IWgOnhMoa/ZS95IH5x4aQFw
 +zqSgmXbocNZBrMr38yKhzO3K5UBnxE9AoE9+T40F8QvtC7H19WIyKuTl/NcMNnNDTA4
 qlctNcA0On92pObaOvbGVoeO3RpFkPUceQhV2R5uKwfuhuwf/sP705mtVasfeJisut3N
 Dk3g==
X-Gm-Message-State: APjAAAWC1IpM4a35WGizmYa4osispoI35/1vob1vv2z6k0zd1Ohx25s6
 C0gvtSzVwUfnyRNfVvNB6FGYhrKnDRvwrbpjJCUneG5xxI0=
X-Google-Smtp-Source: APXvYqx9kjRTOGMPkrUtXLYhZIvOiScQuxoflzzL+gCA0+GjBd8MFVCseeYQxqAEboJDhhcan+s8lZZw/Fhprohh/Zg=
X-Received: by 2002:ab0:2399:: with SMTP id b25mr13464860uan.129.1557756396937; 
 Mon, 13 May 2019 07:06:36 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 May 2019 17:06:25 +0300
Message-ID: <CAE_Rk56tEq9Yn2_rtu3HVHN3HVCJ6xXWKvjDA6dBN22YshFzXw@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Questions regrading to axi wrapper
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============3677354421875252271=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3677354421875252271==
Content-Type: multipart/alternative; boundary="000000000000afa95a0588c56cc1"

--000000000000afa95a0588c56cc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi ,
I'm developing OOT rfnoc block that read and write data from the ddr3 ram.
While exploring for options in replay block I saw that the axi_wrapper data
vector (m_axis and s_axis) input and output  is a 64bit vector while in the
OOT rfnoc block format and and in others noc blocks the data vector is
32bit .
So I have serval question:
1.
 How it possible that one block send 32bit  vector of data and the other
block send 64bit vector of data and they work toghether ?

2.
Is it possible to send axi_dma_master block a 32bit data vectorand not
64bit?

3.
What is simple_mode in axi_wrapper?

Thanks in advance =C3=B7)

--000000000000afa95a0588c56cc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-family:sans-serif;font-size:12.8px" di=
r=3D"auto"><div style=3D"margin:16px 0px"><div><div dir=3D"auto">Hi ,<div d=
ir=3D"auto">I&#39;m developing OOT rfnoc block that read and write data fro=
m the ddr3 ram.</div><div dir=3D"auto">While exploring for options in repla=
y block I saw that the axi_wrapper data vector (m_axis and s_axis) input an=
d output=C2=A0 is a 64bit vector while in the OOT rfnoc block format and an=
d in others noc blocks the data vector is 32bit .</div><div dir=3D"auto">So=
 I have serval question:</div><div dir=3D"auto">1.=C2=A0</div><div dir=3D"a=
uto">=C2=A0How it possible that one block send 32bit=C2=A0 vector of data a=
nd the other block send 64bit vector of data and they work toghether ?</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">2.</div><div dir=3D"auto">Is=
 it possible to send axi_dma_master block a 32bit data vectorand not 64bit?=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">3.</div><div dir=3D"aut=
o">What is simple_mode in axi_wrapper?</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Thanks in advance =C3=B7)</div></div></div></div></div></div=
>

--000000000000afa95a0588c56cc1--


--===============3677354421875252271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3677354421875252271==--

