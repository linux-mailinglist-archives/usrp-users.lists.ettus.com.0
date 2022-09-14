Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A36575B8E67
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 19:57:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4E3F383D56
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 13:57:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663178225; bh=uhzfJeDuaz8goGSLSbiUYL56MYTPqTwDmeFZhyqtTbA=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wleVhfiUSy2V33+2vZJzlNvARlvOGXL3uR8/+G+yszYbGz5+NugnzxRTbXusy9BnB
	 iORg81/YyuBnmckZZXs+baKF+vKUcS2eOzu0kBlKcLRFG/uZIomls6QSJPQBqJ9DBX
	 0lBemwkO4X3oc/V7sBXrhW30v5fpASu5slNLXi/JED+2wg50z59hWPNbgkhr8AqrGd
	 9fdT8W1hqzOm4q4BicMmJZ0W0s+mjqecV3Bae8haMgvWyl8ffVfTucUtQ545HfkInJ
	 Ezep2PiKWhO7xK4vz6IZR3Qz3eIS3xTMTFLQvy90Ox+tN5GamoYCXQlyc5sAnnm/lK
	 BvronMMvcyYmQ==
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D6702383BC3
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 13:55:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F1hQwd/g";
	dkim-atps=neutral
Received: by mail-wr1-f52.google.com with SMTP id t14so26936109wrx.8
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 10:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:from:to:cc:subject:date;
        bh=M2SWi2vlkR8s41gN/tjfocGEoU0A9Lcj9sYeiorESgg=;
        b=F1hQwd/ga5jwT1O7eDKe2BsA7XJB6JtFyXb4+PmNN5CHozfd5R+0v1QAHARFjCOFN9
         6hAr8FyDfB1wQFmoGvA/83vwSMJK81vkGM3PTMs74eTOCvJaKyrAFmUR01Ao5nEzF2YW
         G32o+N89VKoxT6aaRARjZveXkDplbI0gMEtjmdKv8fSbtRrIJrVpmhBzAFjLccAY8bh+
         aPmPRBHADVJiLClbsRZJ7ICw+KueAdSNDtH2/urfKqekC7AWRD5aixz3EuFf7SI4C6cR
         h45o54JwwYgtesGv/jCo6qHCOo94eWP/lzNs04xeJMzRXlVZMOdEB+PdulVADcTBgAqq
         F4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date;
        bh=M2SWi2vlkR8s41gN/tjfocGEoU0A9Lcj9sYeiorESgg=;
        b=zkPMAPBIRRQz/nrcFdEewxdvhU2Ujh9Cul77mGxT+fYky3l+skjNmYtPEKbzffDI42
         zkYF6ktCcYT6FdG5jFeRABOZZm3i1Wltjj/krh6rND6PxzDRRqx/1EMw03VPrSC9bAPX
         vXt0gQZc2R+DawU2t4taOc3BCrb3dFx90dgc9Nj4BIeZbbR8IrQ9AWUGlH8fIMd+MM1D
         pofHEw0S240xfaMKUG2sJr82BAMxrIt5HWqvuIS1qM7GZW0R9ig81ubZYIL48pry++s5
         XKqaa5KtyT7DESHdG49+S+yo5np4Ll6yPyuHUbIyVQ3WrpLv1r3wLBD+YuEGL/hCIlQJ
         xlCA==
X-Gm-Message-State: ACgBeo3BTJKWAX1snQbbaOwYcOBVW9RnQw3TiOcQNqxxviav9dtAeILF
	0lNaR+OvJOpr9QcMnobNEJE=
X-Google-Smtp-Source: AA6agR48Fj37YhxvoSKKz8x8OS8d/nQ7NB/YXHCu4/bSC64wCL9JzpcRbBL9pu9QYkabNaRbRqZJvw==
X-Received: by 2002:adf:fc02:0:b0:22a:43e8:d205 with SMTP id i2-20020adffc02000000b0022a43e8d205mr14690052wrr.420.1663178136459;
        Wed, 14 Sep 2022 10:55:36 -0700 (PDT)
Received: from [192.168.101.170] ([102.39.157.143])
        by smtp.gmail.com with ESMTPSA id m3-20020adfe0c3000000b00228d6bc8450sm16825308wri.108.2022.09.14.10.55.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2022 10:55:35 -0700 (PDT)
Date: Wed, 14 Sep 2022 19:55:19 +0200
From: Kevin Williams <zs1kwa@gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID: <28515f65-c0e2-4489-8563-1887cfac4265@Spark>
In-Reply-To: <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
 <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
 <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
 <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
X-Readdle-Message-ID: 28515f65-c0e2-4489-8563-1887cfac4265@Spark
MIME-Version: 1.0
Message-ID-Hash: SVUEPP3ARUL472VFXT7BQV4AD2MXYF37
X-Message-ID-Hash: SVUEPP3ARUL472VFXT7BQV4AD2MXYF37
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, "=?utf-8?Q?USRP-users=40lists.ettus.com?=" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SVUEPP3ARUL472VFXT7BQV4AD2MXYF37/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3731994533930455388=="

--===============3731994533930455388==
Content-Type: multipart/alternative; boundary="63221593_327b23c6_983"

--63221593_327b23c6_983
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Thanks Brian. I think the core gets generated in a way which respects bac=
k-pressure, so unless a TREADY is seen the core does not generate output =
samples. I have observed this by simulating the core in isolation.
On 14 Sep 2022, 17:49 +0200, Brian Padalino <bpadalino=40gmail.com>, wrot=
e:
> I believe the AXI spec says that data should be presented when valid, a=
nd the tready signal just accepts that data.=C2=A0 You can't rely on trea=
dy to be asserted before asserting tvalid.
>
> With that being said, I have no idea if this is the source of any of yo=
ur issues.
>
> Brian
>
> > On Wed, Sep 14, 2022 at 11:28 AM Kevin Williams <zs1kwa=40gmail.com> =
wrote:
> > > Hi, I don't seem to be able to get TREADY's asserted for my core in=
 a testbench. (See the =22XXXXX's=22 in the testbench below. The symptom =
is that the =22recv=5Fitems=22 blocks until the test times out.)
> > >
> > > Without that check the =22send=5Fitems=22 call is fine, and I can s=
ee the transaction progressing on that interface.
> > >
> > > I'm sure this is a case of me missing something=3F
> > >
> > > //
> > > // Copyright 2022 Ettus Research, a National Instruments Brand
> > > //
> > > // SPDX-License-Identifier: LGPL-3.0-or-later
> > > //
> > > // Module: rfnoc=5Fblock=5Fmultiddc=5Ftb
> > > //
> > > // Description: Testbench for the multiddc R=46NoC block.
> > > //
> > >
> > > =60default=5Fnettype none
> > >
> > >
> > > module rfnoc=5Fblock=5Fmultiddc=5Ftb;
> > >
> > > =C2=A0 =60include =22test=5Fexec.svh=22
> > >
> > > =C2=A0 import PkgTestExec::*;
> > > =C2=A0 import PkgChdrUtils::*;
> > > =C2=A0 import PkgRfnocBlockCtrlBfm::*;
> > > =C2=A0 import PkgRfnocItemUtils::*;
> > >
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > > =C2=A0 // Testbench Configuration
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > >
> > > =C2=A0 localparam =5B31:0=5D NOC=5FID =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D 32'h951E399=46;
> > > =C2=A0 localparam =5B 9:0=5D THIS=5FPORTID =C2=A0 =C2=A0 =3D 10'h12=
3;
> > > =C2=A0 localparam int =C2=A0 =C2=A0CHDR=5FW =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D 64; =C2=A0 =C2=A0// CHDR size in bits
> > > =C2=A0 localparam int =C2=A0 =C2=A0MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D 10; =C2=A0 =C2=A0// Log2 of max transmission unit in CH=
DR words
> > > =C2=A0 localparam int =C2=A0 =C2=A0NUM=5FPORTS =C2=A0 =C2=A0 =C2=A0=
 =3D 1;
> > > =C2=A0 localparam int =C2=A0 =C2=A0NUM=5FPORTS=5FI =C2=A0 =C2=A0 =3D=
 1;
> > > =C2=A0 localparam int =C2=A0 =C2=A0NUM=5FPORTS=5FO =C2=A0 =C2=A0 =3D=
 5;
> > > =C2=A0 localparam int =C2=A0 =C2=A0ITEM=5FW =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D 32; =C2=A0 =C2=A0// Sample size in bits
> > > =C2=A0 localparam int =C2=A0 =C2=A0SPP =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D 64; =C2=A0 =C2=A0// Samples per packet
> > > =C2=A0 localparam int =C2=A0 =C2=A0PKT=5FSIZE=5FBYTES =C2=A0=3D SPP=
 * (ITEM=5FW/8);
> > > =C2=A0 localparam int =C2=A0 =C2=A0STALL=5FPROB =C2=A0 =C2=A0 =C2=A0=
=3D 25; =C2=A0 =C2=A0// Default B=46M stall probability
> > > =C2=A0 localparam real =C2=A0 CHDR=5FCLK=5FPER =C2=A0 =C2=A0=3D 5.0=
; =C2=A0 // 200 MHz
> > > =C2=A0 localparam real =C2=A0 CTRL=5FCLK=5FPER =C2=A0 =C2=A0=3D 8.0=
; =C2=A0 // 125 MHz
> > > =C2=A0 localparam real =C2=A0 CE=5FCLK=5FPER =C2=A0 =C2=A0 =C2=A0=3D=
 4.0; =C2=A0 // 250 MHz
> > >
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > > =C2=A0 // Clocks and Resets
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > >
> > > =C2=A0 bit rfnoc=5Fchdr=5Fclk;
> > > =C2=A0 bit rfnoc=5Fctrl=5Fclk;
> > > =C2=A0 bit ce=5Fclk;
> > >
> > > =C2=A0 sim=5Fclock=5Fgen =23(CHDR=5FCLK=5FPER) rfnoc=5Fchdr=5Fclk=5F=
gen (.clk(rfnoc=5Fchdr=5Fclk), .rst());
> > > =C2=A0 sim=5Fclock=5Fgen =23(CTRL=5FCLK=5FPER) rfnoc=5Fctrl=5Fclk=5F=
gen (.clk(rfnoc=5Fctrl=5Fclk), .rst());
> > > =C2=A0 sim=5Fclock=5Fgen =23(CE=5FCLK=5FPER) ce=5Fclk=5Fgen (.clk(c=
e=5Fclk), .rst());
> > >
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > > =C2=A0 // Bus =46unctional Models
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > >
> > > =C2=A0 // Backend Interface
> > > =C2=A0 RfnocBackendIf backend (rfnoc=5Fchdr=5Fclk, rfnoc=5Fctrl=5Fc=
lk);
> > >
> > > =C2=A0 // AXIS-Ctrl Interface
> > > =C2=A0 AxiStreamIf =23(32) m=5Fctrl (rfnoc=5Fctrl=5Fclk, 1'b0);
> > > =C2=A0 AxiStreamIf =23(32) s=5Fctrl (rfnoc=5Fctrl=5Fclk, 1'b0);
> > >
> > > =C2=A0 // AXIS-CHDR Interfaces
> > > =C2=A0 AxiStreamIf =23(CHDR=5FW) m=5Fchdr =5BNUM=5FPORTS=5FI=5D (rf=
noc=5Fchdr=5Fclk, 1'b0);
> > > =C2=A0 AxiStreamIf =23(CHDR=5FW) s=5Fchdr =5BNUM=5FPORTS=5FO=5D (rf=
noc=5Fchdr=5Fclk, 1'b0);
> > >
> > > =C2=A0 // Block Controller B=46M
> > > =C2=A0 RfnocBlockCtrlBfm =23(CHDR=5FW, ITEM=5FW) blk=5Fctrl =3D new=
(backend, m=5Fctrl, s=5Fctrl);
> > >
> > > =C2=A0 // CHDR word and item/sample data types
> > > =C2=A0 typedef ChdrData =23(CHDR=5FW, ITEM=5FW)::chdr=5Fword=5Ft ch=
dr=5Fword=5Ft;
> > > =C2=A0 typedef ChdrData =23(CHDR=5FW, ITEM=5FW)::item=5Ft =C2=A0 =C2=
=A0 =C2=A0item=5Ft;
> > >
> > > =C2=A0 // Connect block controller to B=46Ms
> > > =C2=A0 for (genvar i =3D 0; i < NUM=5FPORTS=5FI; i++) begin : gen=5F=
bfm=5Finput=5Fconnections
> > > =C2=A0 =C2=A0 initial begin
> > > =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.connect=5Fmaster=5Fdata=5Fport(i, m=
=5Fchdr=5Bi=5D, PKT=5FSIZE=5FBYTES);
> > > =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.set=5Fmaster=5Fstall=5Fprob(i, STAL=
L=5FPROB);
> > > =C2=A0 =C2=A0 end
> > > =C2=A0 end
> > > =C2=A0 for (genvar i =3D 0; i < NUM=5FPORTS=5FO; i++) begin : gen=5F=
bfm=5Foutput=5Fconnections
> > > =C2=A0 =C2=A0 initial begin
> > > =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.connect=5Fslave=5Fdata=5Fport(i, s=5F=
chdr=5Bi=5D);
> > > =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.set=5Fslave=5Fstall=5Fprob(i, STALL=
=5FPROB);
> > > =C2=A0 =C2=A0 end
> > > =C2=A0 end
> > >
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > > =C2=A0 // Device Under Test (DUT)
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > >
> > > =C2=A0 // DUT Slave (Input) Port Signals
> > > =C2=A0 logic =5BCHDR=5FW*NUM=5FPORTS=5FI-1:0=5D s=5Frfnoc=5Fchdr=5F=
tdata;
> > > =C2=A0 logic =5B =C2=A0 =C2=A0 =C2=A0 NUM=5FPORTS=5FI-1:0=5D s=5Frf=
noc=5Fchdr=5Ftlast;
> > > =C2=A0 logic =5B =C2=A0 =C2=A0 =C2=A0 NUM=5FPORTS=5FI-1:0=5D s=5Frf=
noc=5Fchdr=5Ftvalid;
> > > =C2=A0 logic =5B =C2=A0 =C2=A0 =C2=A0 NUM=5FPORTS=5FI-1:0=5D s=5Frf=
noc=5Fchdr=5Ftready;
> > >
> > > =C2=A0 // DUT Master (Output) Port Signals
> > > =C2=A0 logic =5BCHDR=5FW*NUM=5FPORTS=5FO-1:0=5D m=5Frfnoc=5Fchdr=5F=
tdata;
> > > =C2=A0 logic =5B =C2=A0 =C2=A0 =C2=A0 NUM=5FPORTS=5FO-1:0=5D m=5Frf=
noc=5Fchdr=5Ftlast;
> > > =C2=A0 logic =5B =C2=A0 =C2=A0 =C2=A0 NUM=5FPORTS=5FO-1:0=5D m=5Frf=
noc=5Fchdr=5Ftvalid;
> > > =C2=A0 logic =5B =C2=A0 =C2=A0 =C2=A0 NUM=5FPORTS=5FO-1:0=5D m=5Frf=
noc=5Fchdr=5Ftready;
> > >
> > > =C2=A0 // Map the array of B=46Ms to a flat vector for the DUT conn=
ections
> > > =C2=A0 for (genvar i =3D 0; i < NUM=5FPORTS=5FI; i++) begin : gen=5F=
dut=5Finput=5Fconnections
> > > =C2=A0 =C2=A0 // Connect B=46M master to DUT slave port
> > > =C2=A0 =C2=A0 assign s=5Frfnoc=5Fchdr=5Ftdata=5BCHDR=5FW*i+:CHDR=5F=
W=5D =3D m=5Fchdr=5Bi=5D.tdata;
> > > =C2=A0 =C2=A0 assign s=5Frfnoc=5Fchdr=5Ftlast=5Bi=5D =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D m=5Fchdr=5Bi=5D.tlast;
> > > =C2=A0 =C2=A0 assign s=5Frfnoc=5Fchdr=5Ftvalid=5Bi=5D =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D m=5Fchdr=5Bi=5D.tvalid;
> > > =C2=A0 =C2=A0 assign m=5Fchdr=5Bi=5D.tready =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D s=5Frfnoc=5Fchdr=5Ftrea=
dy=5Bi=5D;
> > > =C2=A0 end
> > > =C2=A0 for (genvar i =3D 0; i < NUM=5FPORTS=5FO; i++) begin : gen=5F=
dut=5Foutput=5Fconnections
> > > =C2=A0 =C2=A0 // Connect B=46M slave to DUT master port
> > > =C2=A0 =C2=A0 assign s=5Fchdr=5Bi=5D.tdata =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D m=5Frfnoc=5Fchdr=5Ftdata=5BCHDR=5FW*i+:CHDR=5FW=5D;
> > > =C2=A0 =C2=A0 assign s=5Fchdr=5Bi=5D.tlast =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D m=5Frfnoc=5Fchdr=5Ftlast=5Bi=5D;
> > > =C2=A0 =C2=A0 assign s=5Fchdr=5Bi=5D.tvalid =C2=A0 =C2=A0 =C2=A0 =3D=
 m=5Frfnoc=5Fchdr=5Ftvalid=5Bi=5D;
> > > =C2=A0 =C2=A0 assign m=5Frfnoc=5Fchdr=5Ftready=5Bi=5D =3D s=5Fchdr=5B=
i=5D.tready;
> > > =C2=A0 end
> > >
> > > =C2=A0 rfnoc=5Fblock=5Fmultiddc =23(
> > > =C2=A0 =C2=A0 .THIS=5FPORTID =C2=A0 =C2=A0 =C2=A0 =C2=A0 (THIS=5FPO=
RTID),
> > > =C2=A0 =C2=A0 .CHDR=5FW =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(CHDR=5FW),
> > > =C2=A0 =C2=A0 .MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (MTU),
> > > =C2=A0 =C2=A0 .NUM=5FPORTS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (NUM=5F=
PORTS)
> > > =C2=A0 ) dut (
> > > =C2=A0 =C2=A0 // .rfnoc=5Fchdr=5Fclk =C2=A0 =C2=A0 =C2=A0(rfnoc=5Fc=
hdr=5Fclk),
> > > =C2=A0 =C2=A0 // .rfnoc=5Fctrl=5Fclk =C2=A0 =C2=A0 =C2=A0(rfnoc=5Fc=
trl=5Fclk),
> > > =C2=A0 =C2=A0 .rfnoc=5Fchdr=5Fclk =C2=A0 =C2=A0 =C2=A0(backend.chdr=
=5Fclk),
> > > =C2=A0 =C2=A0 .rfnoc=5Fctrl=5Fclk =C2=A0 =C2=A0 =C2=A0(backend.ctrl=
=5Fclk),
> > > =C2=A0 =C2=A0 .ce=5Fclk =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(ce=5Fclk),
> > > =C2=A0 =C2=A0 .rfnoc=5Fcore=5Fconfig =C2=A0 (backend.cfg),
> > > =C2=A0 =C2=A0 .rfnoc=5Fcore=5Fstatus =C2=A0 (backend.sts),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fchdr=5Ftdata =C2=A0(s=5Frfnoc=5Fchdr=5Ft=
data),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fchdr=5Ftlast =C2=A0(s=5Frfnoc=5Fchdr=5Ft=
last),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fchdr=5Ftvalid (s=5Frfnoc=5Fchdr=5Ftvalid=
),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fchdr=5Ftready (s=5Frfnoc=5Fchdr=5Ftready=
),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fchdr=5Ftdata =C2=A0(m=5Frfnoc=5Fchdr=5Ft=
data),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fchdr=5Ftlast =C2=A0(m=5Frfnoc=5Fchdr=5Ft=
last),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fchdr=5Ftvalid (m=5Frfnoc=5Fchdr=5Ftvalid=
),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fchdr=5Ftready (m=5Frfnoc=5Fchdr=5Ftready=
),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fctrl=5Ftdata =C2=A0(m=5Fctrl.tdata),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fctrl=5Ftlast =C2=A0(m=5Fctrl.tlast),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fctrl=5Ftvalid (m=5Fctrl.tvalid),
> > > =C2=A0 =C2=A0 .s=5Frfnoc=5Fctrl=5Ftready (m=5Fctrl.tready),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fctrl=5Ftdata =C2=A0(s=5Fctrl.tdata),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fctrl=5Ftlast =C2=A0(s=5Fctrl.tlast),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fctrl=5Ftvalid (s=5Fctrl.tvalid),
> > > =C2=A0 =C2=A0 .m=5Frfnoc=5Fctrl=5Ftready (s=5Fctrl.tready)
> > > =C2=A0 );
> > >
> > > =C2=A0 // Generate a random signed 16-bit integer in the range =5Ba=
, b=5D
> > > =C2=A0 function shortint rand=5Fshortint(int a, int b);
> > > =C2=A0 =C2=A0 return signed'(=24urandom=5Frange(b - a)) + a;
> > > =C2=A0 endfunction : rand=5Fshortint
> > >
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > > =C2=A0 // Main Test Process
> > > =C2=A0 //----------------------------------------------------------=
-----------------
> > >
> > > =C2=A0 initial begin : tb=5Fmain
> > >
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 s=5Frfnoc=5Fchdr=5Ftdata=3D'b=
%b=22, s=5Frfnoc=5Fchdr=5Ftdata);
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 s=5Frfnoc=5Fchdr=5Ftvalid=3D'=
%d=22, s=5Frfnoc=5Fchdr=5Ftvalid);
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 s=5Frfnoc=5Fchdr=5Ftready=3D'=
%d=22, s=5Frfnoc=5Fchdr=5Ftready);
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 s=5Frfnoc=5Fchdr=5Ftlast=3D'%=
d=22, s=5Frfnoc=5Fchdr=5Ftlast);
> > >
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 m=5Frfnoc=5Fchdr=5Ftdata=3D'b=
%b=22, m=5Frfnoc=5Fchdr=5Ftdata);
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 m=5Frfnoc=5Fchdr=5Ftvalid=3D'=
b%b=22, m=5Frfnoc=5Fchdr=5Ftvalid);
> > > =C2=A0 =C2=A0 =24monitor(=24time, =22 m=5Frfnoc=5Fchdr=5Ftready=3D'=
b%b=22, m=5Frfnoc=5Fchdr=5Ftready);
> > >
> > > =C2=A0 =C2=A0 // Initialize the test exec object for this testbench=

> > > =C2=A0 =C2=A0 test.start=5Ftb(=22rfnoc=5Fblock=5Fmultiddc=5Ftb=22);=

> > >
> > > =C2=A0 =C2=A0 // Start the B=46Ms running
> > > =C2=A0 =C2=A0 blk=5Fctrl.run();
> > >
> > > =C2=A0 =C2=A0 //--------------------------------
> > > =C2=A0 =C2=A0 // Reset
> > > =C2=A0 =C2=A0 //--------------------------------
> > >
> > > =C2=A0 =C2=A0 test.start=5Ftest(=22=46lush block then reset it=22, =
10us);
> > > =C2=A0 =C2=A0 blk=5Fctrl.flush=5Fand=5Freset();
> > > =C2=A0 =C2=A0 test.end=5Ftest();
> > >
> > > =C2=A0 =C2=A0 // Start the clocks running. We wait to start them un=
til this testbench
> > > =C2=A0 =C2=A0 // runs because we don't want to waste the simulator'=
s CPU time by
> > > =C2=A0 =C2=A0 // simulating idle clock cycles.
> > > =C2=A0 =C2=A0 rfnoc=5Fchdr=5Fclk=5Fgen.start();
> > > =C2=A0 =C2=A0 rfnoc=5Fctrl=5Fclk=5Fgen.start();
> > > =C2=A0 =C2=A0 ce=5Fclk=5Fgen.start();
> > >
> > > =C2=A0 =C2=A0 //--------------------------------
> > > =C2=A0 =C2=A0 // Verify Block Info
> > > =C2=A0 =C2=A0 //--------------------------------
> > >
> > > =C2=A0 =C2=A0 test.start=5Ftest(=22Verify Block Info=22, 2us);
> > > =C2=A0 =C2=A0 =60ASSERT=5FERROR(blk=5Fctrl.get=5Fnoc=5Fid() =3D=3D =
NOC=5FID, =22Incorrect NOC=5FID Value=22);
> > > =C2=A0 =C2=A0 =60ASSERT=5FERROR(blk=5Fctrl.get=5Fnum=5Fdata=5Fi() =3D=
=3D NUM=5FPORTS=5FI, =22Incorrect NUM=5FDATA=5FI Value=22);
> > > =C2=A0 =C2=A0 =60ASSERT=5FERROR(blk=5Fctrl.get=5Fnum=5Fdata=5Fo() =3D=
=3D NUM=5FPORTS=5FO, =22Incorrect NUM=5FDATA=5FO Value=22);
> > > =C2=A0 =C2=A0 =60ASSERT=5FERROR(blk=5Fctrl.get=5Fmtu() =3D=3D MTU, =
=22Incorrect MTU Value=22);
> > > =C2=A0 =C2=A0 test.end=5Ftest();
> > >
> > > =C2=A0 =C2=A0 test.start=5Ftest(=22Verify Slave TREADY=22, 2us);
> > > =C2=A0 =C2=A0 =60ASSERT=5FERROR(s=5Frfnoc=5Fchdr=5Ftready =3D=3D 1'=
b1, =22Slave TREADY is not 1=22);
> > > =C2=A0 =C2=A0 test.end=5Ftest();
> > >
> > > =C2=A0 =C2=A0 //--------------------------------
> > > =C2=A0 =C2=A0 // Test Sequences
> > > =C2=A0 =C2=A0 //--------------------------------
> > >
> > > =C2=A0 =C2=A0 // begin
> > > =C2=A0 =C2=A0 // =C2=A0 // Read and write the gain register to make=
 sure it updates correctly.
> > > =C2=A0 =C2=A0 // =C2=A0 logic =5B31:0=5D val32;
> > > =C2=A0 =C2=A0 // =C2=A0 test.start=5Ftest(=22Verify a register=22, =
5us);
> > >
> > > =C2=A0 =C2=A0 // =C2=A0 blk=5Fctrl.reg=5Fread(256, val32);
> > > =C2=A0 =C2=A0 // =C2=A0 =60ASSERT=5FERROR(
> > > =C2=A0 =C2=A0 // =C2=A0 =C2=A0 val32 =3D=3D 0, =22Initial value for=
 0x100 is not 0=22);
> > >
> > > =C2=A0 =C2=A0 // =C2=A0 // Write a value wider than the register to=
 verify the width
> > > =C2=A0 =C2=A0 // =C2=A0 blk=5Fctrl.reg=5Fwrite(256, 32'h12348765);
> > > =C2=A0 =C2=A0 // =C2=A0 blk=5Fctrl.reg=5Fread(256, val32);
> > > =C2=A0 =C2=A0 // =C2=A0 =60ASSERT=5FERROR(
> > > =C2=A0 =C2=A0 // =C2=A0 =C2=A0 val32 =3D=3D 32'h8765, =22Readback v=
alue for 0x100 is not correct=22);
> > >
> > > =C2=A0 =C2=A0 // =C2=A0 test.end=5Ftest();
> > > =C2=A0 =C2=A0 // end
> > >
> > > =C2=A0 =C2=A0 // <Add your test code here>
> > > =C2=A0 =C2=A0 // test.start=5Ftest(=22<Name your first test>=22, 10=
0us);
> > > =C2=A0 =C2=A0 // =60ASSERT=5FWARNING(0, =22This testbench doesn't t=
est anything yet=21=22);
> > > =C2=A0 =C2=A0 // test.end=5Ftest();
> > >
> > > =C2=A0 =C2=A0 begin
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 localparam shortint MAX=5FTEST=5FVAL =3D=
 =C2=A0255;
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 localparam shortint MIN=5FTEST=5FVAL =3D=
 -255;
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 packet=5Finfo=5Ft pkt=5Finfo;
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 item=5Ft send=5Fsamples=5B=24=5D; =C2=A0=
 =C2=A0// Sample words
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 item=5Ft recv=5Fsamples=5B=24=5D; =C2=A0=
 =C2=A0// Sample words
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Read and write the gain register to =
make sure it updates correctly.
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 test.start=5Ftest(=22Check data flows t=
hrough multiddc=22, 40us);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Generate a payload of random samples=
 in the range =5B-255, 255=5D, two
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // samples per CHDR word.
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 send=5Fsamples =3D =7B=7D;
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (int i =3D 0; i < SPP; i++) begin
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 send=5Fsamples.push=5Fbac=
k(=7B
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // rand=5Fshortint(MIN=5F=
TEST=5FVAL, MAX=5FTEST=5FVAL), =C2=A0// I
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // rand=5Fshortint(MIN=5F=
TEST=5FVAL, MAX=5FTEST=5FVAL) =C2=A0 // Q
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16'hff,
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 16'hff
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =7D);
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 end
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // check that dut is ready to receive
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =60ASSERT=5FERROR(s=5Frfnoc=5Fchdr=5Ftr=
eady =3D=3D 1'b1, =22Slave TREADY is not 1=22);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // wait for slaves to assert TREADY
> > > // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
X
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =24display(=22Waiting for TREADY on the=
 B=46M slave...=22);
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 wait(m=5Frfnoc=5Fchdr=5Ftready =21=3D 5=
'b00000) =24display(=24time, =22 m=5Frfnoc=5Fchdr=5Ftready=3D'b%b=22, m=5F=
rfnoc=5Fchdr=5Ftready);
> > > // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
X
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // check sinks are asserting TREADY
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =24display(=24time, =22 m=5Frfnoc=5Fchd=
r=5Ftready=3D'b%b=22, m=5Frfnoc=5Fchdr=5Ftready);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // model some back-pressure if needed
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.set=5Fslave=5Fstall=5Fprob(0=
, 0);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Queue a packet for transfer
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // pkt=5Finfo =3D 0;
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // pkt=5Finfo.eob =3D 1;
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // blk=5Fctrl.send=5Fitems(0, send=5Fsa=
mples, , pkt=5Finfo);
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.send=5Fitems(0, send=5Fsampl=
es);
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.wait=5Fcomplete(0);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =24display(=24time, =22Send complete=22=
);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =24display(=24time, =22 TX Size=3D'%d=22=
, send=5Fsamples.size());
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Receive the output packet
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 blk=5Fctrl.recv=5Fitems(0, recv=5Fsampl=
es);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 // Check the resulting payload size
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =60ASSERT=5FERROR(recv=5Fsamples.size()=
 =3D=3D SPP,
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =22Received payload didn'=
t match size of payload sent=22);
> > >
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 test.end=5Ftest();
> > > =C2=A0 =C2=A0 end
> > >
> > > =C2=A0 =C2=A0 //--------------------------------
> > > =C2=A0 =C2=A0 // =46inish Up
> > > =C2=A0 =C2=A0 //--------------------------------
> > >
> > > =C2=A0 =C2=A0 // Display final statistics and results
> > > =C2=A0 =C2=A0 test.end=5Ftb();
> > > =C2=A0 end : tb=5Fmain
> > >
> > > endmodule : rfnoc=5Fblock=5Fmultiddc=5Ftb
> > >
> > >
> > > =60default=5Fnettype wire
> > >
> > > > On Wed, 14 Sept 2022 at 12:30, Kevin Williams <zs1kwa=40gmail.com=
> wrote:
> > > > > Hi Rob, thanks for that testbench advice.
> > > > >
> > > > > My core will not provide output if it does not see TREADY on it=
s master interfaces. (Which I have verified by simulating the core on its=
 own.)
> > > > >
> > > > > I have used the rfnoc-example testbench for reference, and issu=
e a =22blk=5Fctrl.send=5Fitems(0, send=5Fsamples)=22.
> > > > >
> > > > > Monitoring the rfnoc signal =22m=5Frfnoc=5Fchdr=5Ftready=22 in =
the testbench shows that it never transitions from zero's at the beginnin=
g of the simulation.
> > > > >
> > > > > Should I see the B=46M slave asserting these signals=3F (I cann=
ot drive them from my testbench - I get a warning about multiple drivers.=
)
> > > > >
> > > > > > On Tue, 13 Sept 2022 at 15:49, Rob Kossler <rkossler=40nd.edu=
> wrote:
> > > > > > > Have you tried to run an rfnoc-style testbench such as in t=
he rfnoc-example=3F=C2=A0 If not, this may be useful.=C2=A0 If you try th=
is, it may be easier to follow the example if you change your output numb=
er of ports to be 1 so that it is a simple 1-to-1 block.
> > > > > > > Rob
> > > > > > >
> > > > > > > > On Tue, Sep 13, 2022 at 6:36 AM Kevin Williams <zs1kwa=40=
gmail.com> wrote:
> > > > > > > > > Hi Rob,
> > > > > > > > >
> > > > > > > > > I can confirm the radio streams correctly.
> > > > > > > > >
> > > > > > > > > I have also tried tx=5Fstreamer =3D> multiDDC =3D> rx=5F=
streamer which successfully sends a number of samples, but none are recei=
ved. (The script is below.)
> > > > > > > > >
> > > > > > > > > Just to summarize, the IP core seems to be behaving cor=
rectly when simulated in Vivado where I apply AXI handshaking, reset the =
core, and clock it.
> > > > > > > > >
> > > > > > > > > I have set all endpoints in the design as follows:
> > > > > > > > >
> > > > > > > > > =C2=A0 ep0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=23 Stream endpoint name
> > > > > > > > > =C2=A0 =C2=A0 ctrl: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =23 Endpoint passes control=
 traffic
> > > > > > > > > =C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =23 Endpoint passes data tr=
affic
> > > > > > > > > =C2=A0 =C2=A0 buff=5Fsize: 32768=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =23 Ingress buffer size for data
> > > > > > > > >
> > > > > > > > > Regards, Kevin
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > graph =3D uhd.rfnoc.RfnocGraph(=22type=3Dx300,addr=3D19=
2.168.30.2=22)
> > > > > > > > >
> > > > > > > > > tx=5Fstreamer =3D graph.create=5Ftx=5Fstreamer(1, uhd.u=
srp.StreamArgs(=22sc16=22, =22sc16=22))
> > > > > > > > > rx=5Fstreamer =3D graph.create=5Frx=5Fstreamer(1, uhd.u=
srp.StreamArgs(=22sc16=22, =22sc16=22))
> > > > > > > > >
> > > > > > > > > gb =3D graph.get=5Fblock(=220/multiddc=230=22)
> > > > > > > > > graph.connect(tx=5Fstreamer, 0, gb.get=5Funique=5Fid(),=
 0)
> > > > > > > > > graph.connect(gb.get=5Funique=5Fid(), 0, rx=5Fstreamer,=
 0)
> > > > > > > > > graph.commit()
> > > > > > > > >
> > > > > > > > > num=5Fsamps =3D 4 * tx=5Fstreamer.get=5Fmax=5Fnum=5Fsam=
ps()
> > > > > > > > > send=5Fsamps =3D np.array(=5B=5B0x40004000=5D * num=5Fs=
amps=5D, dtype=3D=22int32=22)
> > > > > > > > >
> > > > > > > > > tx=5Fmd =3D uhd.types.TXMetadata()
> > > > > > > > > tx=5Fmd.start=5Fof=5Fburst =3D True
> > > > > > > > > tx=5Fmd.end=5Fof=5Fburst =3D True
> > > > > > > > >
> > > > > > > > > recv=5Fsamps =3D np.zeros((1, num=5Fsamps), dtype=3D=22=
int32=22)
> > > > > > > > >
> > > > > > > > > rx=5Fmd =3D uhd.types.RXMetadata()
> > > > > > > > >
> > > > > > > > > num=5Fsent =3D tx=5Fstreamer.send(send=5Fsamps, uhd.typ=
es.TXMetadata())
> > > > > > > > > num=5Frecv =3D rx=5Fstreamer.recv(recv=5Fsamps, rx=5Fmd=
, 0.1)
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > > On Tue, 13 Sept 2022 at 00:36, Rob Kossler <rkossler=40=
nd.edu> wrote:
> > > > > > > > > > > One more thought. If the =46PGA version that you bu=
ilt with dynamic linking, you should be able to create an R=46NoC Graph a=
s follows:
> > > > > > > > > > > =C2=A0 tx=5Fstreamer =3D> multiDDC =3D> rx=5Fstream=
er(s)
> > > > > > > > > > > This way you can eliminate the radio from the equat=
ion and test in a very similar fashion to the way it is tested in a testb=
ench.
> > > > > > > > > > >
> > > > > > > > > > > Rob
> > > > > > > > > > >
> > > > > > > > > > > > On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler <rkos=
sler=40nd.edu> wrote:
> > > > > > > > > > > > > Oops. Ignore what I said. I now realize you sta=
ted you were getting an Overflow which of course you would never get if s=
treaming hadn't started.
> > > > > > > > > > > > > Rob
> > > > > > > > > > > > >
> > > > > > > > > > > > > > On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <=
rkossler=40nd.edu> wrote:
> > > > > > > > > > > > > > > Are you sure that the radio is even streami=
ng=3F=C2=A0 The typical method for starting streaming is to tell the rx=5F=
streamer to start streaming.=C2=A0 Then, in UHD-land, the rx=5Fstreamer c=
trl tells the next upstring block to start streaming such that this strea=
ming command propagates up the chain until the radio receives it and star=
ts streaming.=C2=A0 So, if your custom block does not forward the streami=
ng command from the rx=5Fstreamer to the radio, then the radio never even=
 starts streaming.=C2=A0 You can verify by simply monitoring the LEDs.
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > If this is the problem, you can go-around t=
he intended use by simply telling the radio to start streaming rather tha=
n the rx=5Fstreamer.=C2=A0 Or, of course, you can modify your custom bloc=
k controller to propagate the streaming command.
> > > > > > > > > > > > > > > Rob
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > On Mon, Sep 12, 2022 at 4:18 PM Kevin Wil=
liams <zs1kwa=40gmail.com> wrote:
> > > > > > > > > > > > > > > > > Yes, of course. But I don't get 1 sampl=
e from the ddc's, even with just one channel of a 2:1 decimated channel c=
onnected to the rx streamer.
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > On Mon, 12 Sept 2022 at 22:13, Jonath=
on Pendlum <jonathon.pendlum=40ettus.com> wrote:
> > > > > > > > > > > > > > > > > > > The aggregate output rate of the 5 =
streams could require more bandwidth than the 10 GigE interface can susta=
in. What are the exact output rates=3F
> > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > On Mon, Sep 12, 2022 at 3:53 PM K=
evin Williams <zs1kwa=40gmail.com> wrote:
> > > > > > > > > > > > > > > > > > > > > Those rates vary from a 2:1 dec=
imation down to other rates.
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > The host has 10 Gbe interfaces =
to the USRP.
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > I get samples if i connect the =
radio to the rx streamer, just nothing from the ddc's.
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > On Mon, 12 Sept 2022 at 21:48=
, Jonathon Pendlum <jonathon.pendlum=40ettus.com> wrote:
> > > > > > > > > > > > > > > > > > > > > > > Hi Kevin,
> > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > What are the sample rates f=
or the 5 outputs=3F What connection are you using to your host PC, 1 GigE=
 or 10 GigE=3F
> > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > Jonathon
> > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > On Mon, Sep 12, 2022 at 3=
:38 PM Kevin Williams <zs1kwa=40gmail.com> wrote:
> > > > > > > > > > > > > > > > > > > > > > > > > Hi Jonathon,
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > I've got an x310. The f=
lowgraph is a simple radio->multiddc->(to 5x outputs). I've tried both st=
atic and dynamic routing from the radio block. I.e. the static route vers=
ion:
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0 /
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0 =C2=A0 =C2=A0Static connections on this device:
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0* 0/Radio=230:0=3D=3D>0/multiddc=230:0
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0* 0/multiddc=230:0=3D=3D>0/SEP=232:0
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0* 0/multiddc=230:1=3D=3D>0/SEP=233:0
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0* 0/multiddc=230:2=3D=3D>0/SEP=234:0
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0* 0/multiddc=230:3=3D=3D>0/SEP=235:0
> > > > > > > > > > > > > > > > > > > > > > > > > =7C=C2=A0 =C2=A0=7C=C2=A0=
 =C2=A0* 0/multiddc=230:4=3D=3D>0/SEP=236:0
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > On the input side it is=
 all at the radio rate, but I hope my core is being clocked at 214 MHz.
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > When I simulate my IP c=
ore (which includes the AXI streaming interfaces) it looks ok.
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > Regards, Kevin
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > On Mon, 12 Sept 2022 =
at 21:29, Jonathon Pendlum <jonathon.pendlum=40ettus.com> wrote:
> > > > > > > > > > > > > > > > > > > > > > > > > > > Hello Kevin,
> > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > What device are you=
 using and what does your flowgraph look like=3F What sample rate are you=
 running at=3F If your block is running at the radio sample rate (e.g. 20=
0 MSPS on a X310), your block will need to process one input sample every=
 clock cycle on average.
> > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > Jonathon
> > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > On Mon, Sep 12, 2=
022 at 9:09 AM Kevin Williams <zs1kwa=40gmail.com> wrote:
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > Hi All,
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > I've got an IP =
core that is causing an =22ERROR=5FCODE=5FOVER=46LOW=22 when used in an R=
=46NoC project.
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > The core respon=
ds correctly when simulated outside the R=46NoC environment. (I can see c=
orrect output, the AXI streaming signalling, back-pressure when required,=
 etc.)
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > I'm not sure ho=
w to go about debugging this, and am not yet familiar enough with R=46NoC=
 to know what to ask.
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > I have been thi=
nking it was the core not being reset or clocked correctly, but this is h=
ow it gets instantiated:
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 multiddc=
 multiddc=5Fi (
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 /=
/=C2=A0 =C2=A0- Using different clocks for the IP core and the AXI interf=
ace. The IPCore=5FClk and AXILite=5FACLK must be
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 /=
/=C2=A0 =C2=A0 =C2=A0synchronous and connected to the same clock source. =
The IPCore=5FRESETN and AXILite=5FARESETN must be
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 /=
/=C2=A0 =C2=A0 =C2=A0connected to the same reset source. See Synchronizat=
ion of Global Reset Signal to IP Core Clock Domain.
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 .=
IPCORE=5FCLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis=
=5Fdata=5Fclk),
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 .=
IPCORE=5FRESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(=7Eaxis=5F=
data=5Frst),
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 .=
AXI4=5FLite=5FACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (axis=5Fdata=5F=
clk),
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 .=
AXI4=5FLite=5FARESETN=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(=7Eaxis=5Fdata=5F=
rst),
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > The core YAML f=
ile describes the clock as:
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > data:
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 fpga=5Fi=
face: axis=5Fchdr
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 clk=5Fdo=
main: ce
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > In the project =
YAML file:
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > clk=5Fdomains:
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 -=
 =7B srcblk: =5Fdevice=5F, srcport: radio, dstblk: radio0,=C2=A0 =C2=A0 d=
stport: radio =7D
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =C2=A0 =C2=A0 -=
 =7B srcblk: =5Fdevice=5F, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, d=
stport: ce =7D
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > Is there someth=
ing that might be an obvious first place to check=3F
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > Many thanks, Ke=
vin
> > > > > > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > --
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > Kevin Williams
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > =5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > USRP-users mail=
ing list -- usrp-users=40lists.ettus.com
> > > > > > > > > > > > > > > > > > > > > > > > > > > > > To unsubscribe =
send an email to usrp-users-leave=40lists.ettus.com
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > > > > > --
> > > > > > > > > > > > > > > > > > > > > > > > > Kevin Williams
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > > > > > --
> > > > > > > > > > > > > > > > > > > > > Kevin Williams
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > > > --
> > > > > > > > > > > > > > > > > Kevin Williams
> > > > > > > > > > > > > > > > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > > > > > > > > > > > > > > > > USRP-users mailing list -- usrp-users=40=
lists.ettus.com
> > > > > > > > > > > > > > > > > To unsubscribe send an email to usrp-us=
ers-leave=40lists.ettus.com
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > --
> > > > > > > > > Kevin Williams
> > > > >
> > > > >
> > > > > --
> > > > > Kevin Williams
> > >
> > >
> > > --
> > > Kevin Williams
> > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > > USRP-users mailing list -- usrp-users=40lists.ettus.com
> > > To unsubscribe send an email to usrp-users-leave=40lists.ettus.com

--63221593_327b23c6_983
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Thanks Brian. I think the core gets generated in a =
way which respects back-pressure, so unless a TREADY is seen the core doe=
s not generate output samples. I have observed this by simulating the cor=
e in isolation.</div>
</div>
<div name=3D=22messageReplySection=22>On 14 Sep 2022, 17:49 +0200, Brian =
Padalino &lt;bpadalino=40gmail.com&gt;, wrote:<br />
<blockquote type=3D=22cite=22 style=3D=22border-left-color: grey; border-=
left-width: thin; border-left-style: solid; margin: 5px 5px;padding-left:=
 10px;=22>
<div dir=3D=22ltr=22>I believe the AXI spec says that data should be pres=
ented when valid, and the tready signal just accepts that data.&=23160; Y=
ou can't rely on tready to be asserted before asserting tvalid.
<div><br /></div>
<div>With that being said, I have no idea if this is the source of any of=
 your issues.</div>
<div><br /></div>
<div>Brian</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Wed, Sep 14, 2022 at 1=
1:28 AM Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22>zs1k=
wa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>Hi, I don't seem to be able to get TREADY's asserted=
 for my core in a testbench. (See the =22XXXXX's=22 in the testbench belo=
w. The symptom is that the =22recv=5Fitems=22 blocks until the test times=
 out.)&=23160;
<div><br /></div>
<div>Without that check the =22send=5Fitems=22 call is fine, and I can se=
e the transaction progressing on that interface.</div>
<div><br /></div>
<div>I'm sure this is a case of me missing something=3F</div>
<div><br /></div>
<div>
<div style=3D=22color:rgb(212,212,212);background-color:rgb(30,30,30);fon=
t-family:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;line-h=
eight:19px;white-space:pre-wrap=22>
<div><span style=3D=22color:rgb(106,153,85)=22>//</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>// Copyright 2022 Ettus Re=
search, a National Instruments Brand</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>//</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>// SPDX-License-Identifier=
: LGPL-3.0-or-later</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>//</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>// Module: rfnoc=5Fblock=5F=
multiddc=5Ftb</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>//</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>// Description: Testbench =
for the multiddc R=46NoC block.</span></div>
<div><span style=3D=22color:rgb(106,153,85)=22>//</span></div>
<br />
<div>=60default=5Fnettype <span style=3D=22color:rgb(156,220,254)=22>none=
</span></div>
<br />
<br />
<div><span style=3D=22color:rgb(197,134,192)=22>module</span> <span style=
=3D=22color:rgb(78,201,176)=22>rfnoc=5Fblock=5Fmultiddc=5Ftb</span>;</div=
>
<br />
<div>&=23160; =60include <span style=3D=22color:rgb(206,145,120)=22>=22te=
st=5Fexec.svh=22</span></div>
<br />
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>import</span> <s=
pan style=3D=22color:rgb(78,201,176)=22>PkgTestExec</span>::*;</div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>import</span> <s=
pan style=3D=22color:rgb(78,201,176)=22>PkgChdrUtils</span>::*;</div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>import</span> <s=
pan style=3D=22color:rgb(78,201,176)=22>PkgRfnocBlockCtrlBfm</span>::*;</=
div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>import</span> <s=
pan style=3D=22color:rgb(78,201,176)=22>PkgRfnocItemUtils</span>::*;</div=
>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Testbench Conf=
iguration</span></div>
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<br />
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam</span>=
 =5B<span style=3D=22color:rgb(181,206,168)=22>31</span>:<span style=3D=22=
color:rgb(181,206,168)=22>0</span>=5D NOC=5FID &=23160; &=23160; &=23160;=
 &=23160; &=23160;=3D <span style=3D=22color:rgb(181,206,168)=22>32'h951E=
399=46</span>;</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam</span>=
 =5B <span style=3D=22color:rgb(181,206,168)=22>9</span>:<span style=3D=22=
color:rgb(181,206,168)=22>0</span>=5D THIS=5FPORTID &=23160; &=23160; =3D=
 <span style=3D=22color:rgb(181,206,168)=22>10'h123</span>;</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;CHDR=5FW &=23160; &=23160; &=23160; &=23160; &=2316=
0;=3D <span style=3D=22color:rgb(181,206,168)=22>64</span>; &=23160; &=23=
160;<span style=3D=22color:rgb(106,153,85)=22>// CHDR size in bits</span>=
</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;MTU &=23160; &=23160; &=23160; &=23160; &=23160; &=23=
160; =3D <span style=3D=22color:rgb(181,206,168)=22>10</span>; &=23160; &=
=23160;<span style=3D=22color:rgb(106,153,85)=22>// Log2 of max transmiss=
ion unit in CHDR words</span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;NUM=5FPORTS &=23160; &=23160; &=23160; =3D <span st=
yle=3D=22color:rgb(181,206,168)=22>1</span>;</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;NUM=5FPORTS=5FI &=23160; &=23160; =3D <span style=3D=
=22color:rgb(181,206,168)=22>1</span>;</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;NUM=5FPORTS=5FO &=23160; &=23160; =3D <span style=3D=
=22color:rgb(181,206,168)=22>5</span>;</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;ITEM=5FW &=23160; &=23160; &=23160; &=23160; &=2316=
0;=3D <span style=3D=22color:rgb(181,206,168)=22>32</span>; &=23160; &=23=
160;<span style=3D=22color:rgb(106,153,85)=22>// Sample size in bits</spa=
n></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;SPP &=23160; &=23160; &=23160; &=23160; &=23160; &=23=
160; =3D <span style=3D=22color:rgb(181,206,168)=22>64</span>; &=23160; &=
=23160;<span style=3D=22color:rgb(106,153,85)=22>// Samples per packet</s=
pan></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;PKT=5FSIZE=5FBYTES &=23160;=3D SPP * (ITEM=5FW/<spa=
n style=3D=22color:rgb(181,206,168)=22>8</span>);</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam int</s=
pan> &=23160; &=23160;STALL=5FPROB &=23160; &=23160; &=23160;=3D <span st=
yle=3D=22color:rgb(181,206,168)=22>25</span>; &=23160; &=23160;<span styl=
e=3D=22color:rgb(106,153,85)=22>// Default B=46M stall probability</span>=
</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam real</=
span> &=23160; CHDR=5FCLK=5FPER &=23160; &=23160;=3D <span style=3D=22col=
or:rgb(181,206,168)=22>5</span>.<span style=3D=22color:rgb(181,206,168)=22=
>0</span>; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// 200 MHz<=
/span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam real</=
span> &=23160; CTRL=5FCLK=5FPER &=23160; &=23160;=3D <span style=3D=22col=
or:rgb(181,206,168)=22>8</span>.<span style=3D=22color:rgb(181,206,168)=22=
>0</span>; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// 125 MHz<=
/span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>localparam real</=
span> &=23160; CE=5FCLK=5FPER &=23160; &=23160; &=23160;=3D <span style=3D=
=22color:rgb(181,206,168)=22>4</span>.<span style=3D=22color:rgb(181,206,=
168)=22>0</span>; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// 2=
50 MHz</span></div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Clocks and Res=
ets</span></div>
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<br />
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; bit</span> rfnoc=5F=
chdr=5Fclk;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; bit</span> rfnoc=5F=
ctrl=5Fclk;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; bit</span> ce=5Fc=
lk;</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>sim=5Fclock=5Fgen=
</span> =23(CHDR=5FCLK=5FPER) <span style=3D=22color:rgb(78,201,176)=22>r=
fnoc=5Fchdr=5Fclk=5Fgen</span> (.<span style=3D=22color:rgb(220,220,170)=22=
>clk</span>(rfnoc=5Fchdr=5Fclk), .<span style=3D=22color:rgb(220,220,170)=
=22>rst</span>());</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>sim=5Fclock=5Fgen=
</span> =23(CTRL=5FCLK=5FPER) <span style=3D=22color:rgb(78,201,176)=22>r=
fnoc=5Fctrl=5Fclk=5Fgen</span> (.<span style=3D=22color:rgb(220,220,170)=22=
>clk</span>(rfnoc=5Fctrl=5Fclk), .<span style=3D=22color:rgb(220,220,170)=
=22>rst</span>());</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>sim=5Fclock=5Fgen=
</span> =23(CE=5FCLK=5FPER) <span style=3D=22color:rgb(78,201,176)=22>ce=5F=
clk=5Fgen</span> (.<span style=3D=22color:rgb(220,220,170)=22>clk</span>(=
ce=5Fclk), .<span style=3D=22color:rgb(220,220,170)=22>rst</span>());</di=
v>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Bus =46unction=
al Models</span></div>
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Backend Interf=
ace</span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>RfnocBackendIf</s=
pan> <span style=3D=22color:rgb(78,201,176)=22>backend</span> (rfnoc=5Fch=
dr=5Fclk, rfnoc=5Fctrl=5Fclk);</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// AXIS-Ctrl Inte=
rface</span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>AxiStreamIf</span=
> =23(<span style=3D=22color:rgb(181,206,168)=22>32</span>) <span style=3D=
=22color:rgb(78,201,176)=22>m=5Fctrl</span> (rfnoc=5Fctrl=5Fclk, <span st=
yle=3D=22color:rgb(181,206,168)=22>1'b0</span>);</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>AxiStreamIf</span=
> =23(<span style=3D=22color:rgb(181,206,168)=22>32</span>) <span style=3D=
=22color:rgb(78,201,176)=22>s=5Fctrl</span> (rfnoc=5Fctrl=5Fclk, <span st=
yle=3D=22color:rgb(181,206,168)=22>1'b0</span>);</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// AXIS-CHDR Inte=
rfaces</span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>AxiStreamIf</span=
> =23(CHDR=5FW) m=5Fchdr =5BNUM=5FPORTS=5FI=5D (rfnoc=5Fchdr=5Fclk, <span=
 style=3D=22color:rgb(181,206,168)=22>1'b0</span>);</div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>AxiStreamIf</span=
> =23(CHDR=5FW) s=5Fchdr =5BNUM=5FPORTS=5FO=5D (rfnoc=5Fchdr=5Fclk, <span=
 style=3D=22color:rgb(181,206,168)=22>1'b0</span>);</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Block Controll=
er B=46M</span></div>
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>RfnocBlockCtrlBfm=
</span> =23(CHDR=5FW, ITEM=5FW) blk=5Fctrl =3D <span style=3D=22color:rgb=
(197,134,192)=22>new</span>(backend, m=5Fctrl, s=5Fctrl);</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// CHDR word and =
item/sample data types</span></div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>typedef</span> <=
span style=3D=22color:rgb(86,156,214)=22>ChdrData</span> =23(CHDR=5FW, IT=
EM=5FW)::chdr=5Fword=5Ft <span style=3D=22color:rgb(220,220,170)=22>chdr=5F=
word=5Ft</span>;</div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>typedef</span> <=
span style=3D=22color:rgb(86,156,214)=22>ChdrData</span> =23(CHDR=5FW, IT=
EM=5FW)::item=5Ft &=23160; &=23160; &=23160;<span style=3D=22color:rgb(22=
0,220,170)=22>item=5Ft</span>;</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Connect block =
controller to B=46Ms</span></div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>for</span> (<spa=
n style=3D=22color:rgb(86,156,214)=22>genvar</span> i =3D <span style=3D=22=
color:rgb(181,206,168)=22>0</span>; i &lt; NUM=5FPORTS=5FI; i++) <span st=
yle=3D=22color:rgb(86,156,214)=22>begin</span> : gen=5Fbfm=5Finput=5Fconn=
ections</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>initial=
</span> <span style=3D=22color:rgb(197,134,192)=22>begin</span></div>
<div>&=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22color:rgb(220=
,220,170)=22>connect=5Fmaster=5Fdata=5Fport</span>(i, m=5Fchdr=5Bi=5D, PK=
T=5FSIZE=5FBYTES);</div>
<div>&=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22color:rgb(220=
,220,170)=22>set=5Fmaster=5Fstall=5Fprob</span>(i, STALL=5FPROB);</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>end</sp=
an></div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>end</span></div>=

<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>for</span> (<spa=
n style=3D=22color:rgb(86,156,214)=22>genvar</span> i =3D <span style=3D=22=
color:rgb(181,206,168)=22>0</span>; i &lt; NUM=5FPORTS=5FO; i++) <span st=
yle=3D=22color:rgb(86,156,214)=22>begin</span> : gen=5Fbfm=5Foutput=5Fcon=
nections</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>initial=
</span> <span style=3D=22color:rgb(197,134,192)=22>begin</span></div>
<div>&=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22color:rgb(220=
,220,170)=22>connect=5Fslave=5Fdata=5Fport</span>(i, s=5Fchdr=5Bi=5D);</d=
iv>
<div>&=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22color:rgb(220=
,220,170)=22>set=5Fslave=5Fstall=5Fprob</span>(i, STALL=5FPROB);</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>end</sp=
an></div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>end</span></div>=

<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Device Under T=
est (DUT)</span></div>
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// DUT Slave (Inp=
ut) Port Signals</span></div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5BC=
HDR=5FW*NUM=5FPORTS=5FI-<span style=3D=22color:rgb(181,206,168)=22>1</spa=
n>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=5D s=5Frfnoc=5Fchd=
r=5Ftdata;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5B =
&=23160; &=23160; &=23160; NUM=5FPORTS=5FI-<span style=3D=22color:rgb(181=
,206,168)=22>1</span>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=
=5D s=5Frfnoc=5Fchdr=5Ftlast;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5B =
&=23160; &=23160; &=23160; NUM=5FPORTS=5FI-<span style=3D=22color:rgb(181=
,206,168)=22>1</span>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=
=5D s=5Frfnoc=5Fchdr=5Ftvalid;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5B =
&=23160; &=23160; &=23160; NUM=5FPORTS=5FI-<span style=3D=22color:rgb(181=
,206,168)=22>1</span>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=
=5D s=5Frfnoc=5Fchdr=5Ftready;</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// DUT Master (Ou=
tput) Port Signals</span></div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5BC=
HDR=5FW*NUM=5FPORTS=5FO-<span style=3D=22color:rgb(181,206,168)=22>1</spa=
n>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=5D m=5Frfnoc=5Fchd=
r=5Ftdata;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5B =
&=23160; &=23160; &=23160; NUM=5FPORTS=5FO-<span style=3D=22color:rgb(181=
,206,168)=22>1</span>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=
=5D m=5Frfnoc=5Fchdr=5Ftlast;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5B =
&=23160; &=23160; &=23160; NUM=5FPORTS=5FO-<span style=3D=22color:rgb(181=
,206,168)=22>1</span>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=
=5D m=5Frfnoc=5Fchdr=5Ftvalid;</div>
<div><span style=3D=22color:rgb(86,156,214)=22>&=23160; logic</span> =5B =
&=23160; &=23160; &=23160; NUM=5FPORTS=5FO-<span style=3D=22color:rgb(181=
,206,168)=22>1</span>:<span style=3D=22color:rgb(181,206,168)=22>0</span>=
=5D m=5Frfnoc=5Fchdr=5Ftready;</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Map the array =
of B=46Ms to a flat vector for the DUT connections</span></div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>for</span> (<spa=
n style=3D=22color:rgb(86,156,214)=22>genvar</span> i =3D <span style=3D=22=
color:rgb(181,206,168)=22>0</span>; i &lt; NUM=5FPORTS=5FI; i++) <span st=
yle=3D=22color:rgb(86,156,214)=22>begin</span> : gen=5Fdut=5Finput=5Fconn=
ections</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Conne=
ct B=46M master to DUT slave port</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> s=5Frfnoc=5Fchdr=5Ftdata=5BCHDR=5FW*i+:CHDR=5FW=5D =3D m=5Fchdr=5B=
i=5D.tdata;</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> s=5Frfnoc=5Fchdr=5Ftlast=5Bi=5D &=23160; &=23160; &=23160; &=23160=
; &=23160; &=23160; &=23160; &=23160;=3D m=5Fchdr=5Bi=5D.tlast;</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> s=5Frfnoc=5Fchdr=5Ftvalid=5Bi=5D &=23160; &=23160; &=23160; &=2316=
0; &=23160; &=23160; &=23160; =3D m=5Fchdr=5Bi=5D.tvalid;</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> m=5Fchdr=5Bi=5D.tready &=23160; &=23160; &=23160; &=23160; &=23160=
; &=23160; &=23160; &=23160; &=23160; &=23160; =3D s=5Frfnoc=5Fchdr=5Ftre=
ady=5Bi=5D;</div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>end</span></div>=

<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>for</span> (<spa=
n style=3D=22color:rgb(86,156,214)=22>genvar</span> i =3D <span style=3D=22=
color:rgb(181,206,168)=22>0</span>; i &lt; NUM=5FPORTS=5FO; i++) <span st=
yle=3D=22color:rgb(86,156,214)=22>begin</span> : gen=5Fdut=5Foutput=5Fcon=
nections</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Conne=
ct B=46M slave to DUT master port</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> s=5Fchdr=5Bi=5D.tdata &=23160; &=23160; &=23160; &=23160;=3D m=5Fr=
fnoc=5Fchdr=5Ftdata=5BCHDR=5FW*i+:CHDR=5FW=5D;</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> s=5Fchdr=5Bi=5D.tlast &=23160; &=23160; &=23160; &=23160;=3D m=5Fr=
fnoc=5Fchdr=5Ftlast=5Bi=5D;</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> s=5Fchdr=5Bi=5D.tvalid &=23160; &=23160; &=23160; =3D m=5Frfnoc=5F=
chdr=5Ftvalid=5Bi=5D;</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>assign<=
/span> m=5Frfnoc=5Fchdr=5Ftready=5Bi=5D =3D s=5Fchdr=5Bi=5D.tready;</div>=

<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>end</span></div>=

<br />
<div>&=23160; <span style=3D=22color:rgb(86,156,214)=22>rfnoc=5Fblock=5Fm=
ultiddc</span> =23(</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>THIS=5F=
PORTID</span> &=23160; &=23160; &=23160; &=23160; (THIS=5FPORTID),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>CHDR=5F=
W</span> &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160;(C=
HDR=5FW),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>MTU</s=
pan> &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=231=
60; (MTU),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>NUM=5F=
PORTS</span> &=23160; &=23160; &=23160; &=23160; &=23160; (NUM=5FPORTS)</=
div>
<div>&=23160; ) <span style=3D=22color:rgb(78,201,176)=22>dut</span> (</d=
iv>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// .rfno=
c=5Fchdr=5Fclk &=23160; &=23160; &=23160;(rfnoc=5Fchdr=5Fclk),</span></di=
v>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// .rfno=
c=5Fctrl=5Fclk &=23160; &=23160; &=23160;(rfnoc=5Fctrl=5Fclk),</span></di=
v>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>rfnoc=5F=
chdr=5Fclk</span> &=23160; &=23160; &=23160;(backend.<span style=3D=22col=
or:rgb(220,220,170)=22>chdr=5Fclk</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>rfnoc=5F=
ctrl=5Fclk</span> &=23160; &=23160; &=23160;(backend.<span style=3D=22col=
or:rgb(220,220,170)=22>ctrl=5Fclk</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>ce=5Fc=
lk</span> &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160;(=
ce=5Fclk),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>rfnoc=5F=
core=5Fconfig</span> &=23160; (backend.<span style=3D=22color:rgb(220,220=
,170)=22>cfg</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>rfnoc=5F=
core=5Fstatus</span> &=23160; (backend.<span style=3D=22color:rgb(220,220=
,170)=22>sts</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fchdr=5Ftdata</span> &=23160;(s=5Frfnoc=5Fchdr=5Ftdata),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fchdr=5Ftlast</span> &=23160;(s=5Frfnoc=5Fchdr=5Ftlast),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fchdr=5Ftvalid</span> (s=5Frfnoc=5Fchdr=5Ftvalid),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fchdr=5Ftready</span> (s=5Frfnoc=5Fchdr=5Ftready),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fchdr=5Ftdata</span> &=23160;(m=5Frfnoc=5Fchdr=5Ftdata),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fchdr=5Ftlast</span> &=23160;(m=5Frfnoc=5Fchdr=5Ftlast),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fchdr=5Ftvalid</span> (m=5Frfnoc=5Fchdr=5Ftvalid),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fchdr=5Ftready</span> (m=5Frfnoc=5Fchdr=5Ftready),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fctrl=5Ftdata</span> &=23160;(m=5Fctrl.<span style=3D=22color:rgb(22=
0,220,170)=22>tdata</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fctrl=5Ftlast</span> &=23160;(m=5Fctrl.<span style=3D=22color:rgb(22=
0,220,170)=22>tlast</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fctrl=5Ftvalid</span> (m=5Fctrl.<span style=3D=22color:rgb(220,220,1=
70)=22>tvalid</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>s=5Frf=
noc=5Fctrl=5Ftready</span> (m=5Fctrl.<span style=3D=22color:rgb(220,220,1=
70)=22>tready</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fctrl=5Ftdata</span> &=23160;(s=5Fctrl.<span style=3D=22color:rgb(22=
0,220,170)=22>tdata</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fctrl=5Ftlast</span> &=23160;(s=5Fctrl.<span style=3D=22color:rgb(22=
0,220,170)=22>tlast</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fctrl=5Ftvalid</span> (s=5Fctrl.<span style=3D=22color:rgb(220,220,1=
70)=22>tvalid</span>),</div>
<div>&=23160; &=23160; .<span style=3D=22color:rgb(220,220,170)=22>m=5Frf=
noc=5Fctrl=5Ftready</span> (s=5Fctrl.<span style=3D=22color:rgb(220,220,1=
70)=22>tready</span>)</div>
<div>&=23160; );</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Generate a ran=
dom signed 16-bit integer in the range =5Ba, b=5D</span></div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>function</span> =
<span style=3D=22color:rgb(86,156,214)=22>shortint</span> <span style=3D=22=
color:rgb(220,220,170)=22>rand=5Fshortint</span>(<span style=3D=22color:r=
gb(86,156,214)=22>int</span> a, <span style=3D=22color:rgb(86,156,214)=22=
>int</span> b);</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>return<=
/span> <span style=3D=22color:rgb(86,156,214)=22>signed</span>'(<span sty=
le=3D=22color:rgb(220,220,170)=22>=24urandom=5Frange</span>(b - a)) + a;<=
/div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>endfunction</spa=
n> : rand=5Fshortint</div>
<br />
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>// Main Test Proc=
ess</span></div>
<div>&=23160; <span style=3D=22color:rgb(106,153,85)=22>//---------------=
------------------------------------------------------------</span></div>=

<br />
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>initial</span> <=
span style=3D=22color:rgb(86,156,214)=22>begin</span> : tb=5Fmain</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 s=5Frfnoc=5Fchdr=5Ftdata=3D'b=
</span><span style=3D=22color:rgb(156,220,254)=22>%b</span><span style=3D=
=22color:rgb(206,145,120)=22>=22</span>, s=5Frfnoc=5Fchdr=5Ftdata);</div>=

<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 s=5Frfnoc=5Fchdr=5Ftvalid=3D'=
</span><span style=3D=22color:rgb(156,220,254)=22>%d</span><span style=3D=
=22color:rgb(206,145,120)=22>=22</span>, s=5Frfnoc=5Fchdr=5Ftvalid);</div=
>
<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 s=5Frfnoc=5Fchdr=5Ftready=3D'=
</span><span style=3D=22color:rgb(156,220,254)=22>%d</span><span style=3D=
=22color:rgb(206,145,120)=22>=22</span>, s=5Frfnoc=5Fchdr=5Ftready);</div=
>
<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 s=5Frfnoc=5Fchdr=5Ftlast=3D'<=
/span><span style=3D=22color:rgb(156,220,254)=22>%d</span><span style=3D=22=
color:rgb(206,145,120)=22>=22</span>, s=5Frfnoc=5Fchdr=5Ftlast);</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 m=5Frfnoc=5Fchdr=5Ftdata=3D'b=
</span><span style=3D=22color:rgb(156,220,254)=22>%b</span><span style=3D=
=22color:rgb(206,145,120)=22>=22</span>, m=5Frfnoc=5Fchdr=5Ftdata);</div>=

<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 m=5Frfnoc=5Fchdr=5Ftvalid=3D'=
b</span><span style=3D=22color:rgb(156,220,254)=22>%b</span><span style=3D=
=22color:rgb(206,145,120)=22>=22</span>, m=5Frfnoc=5Fchdr=5Ftvalid);</div=
>
<div>&=23160; &=23160; <span style=3D=22color:rgb(220,220,170)=22>=24moni=
tor</span>(<span style=3D=22color:rgb(220,220,170)=22>=24time</span>, <sp=
an style=3D=22color:rgb(206,145,120)=22>=22 m=5Frfnoc=5Fchdr=5Ftready=3D'=
b</span><span style=3D=22color:rgb(156,220,254)=22>%b</span><span style=3D=
=22color:rgb(206,145,120)=22>=22</span>, m=5Frfnoc=5Fchdr=5Ftready);</div=
>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Initi=
alize the test exec object for this testbench</span></div>
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>st=
art=5Ftb</span>(<span style=3D=22color:rgb(206,145,120)=22>=22rfnoc=5Fblo=
ck=5Fmultiddc=5Ftb=22</span>);</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Start=
 the B=46Ms running</span></div>
<div>&=23160; &=23160; blk=5Fctrl.<span style=3D=22color:rgb(220,220,170)=
=22>run</span>();</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Reset=
</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<br />
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>st=
art=5Ftest</span>(<span style=3D=22color:rgb(206,145,120)=22>=22=46lush b=
lock then reset it=22</span>, <span style=3D=22color:rgb(181,206,168)=22>=
10us</span>);</div>
<div>&=23160; &=23160; blk=5Fctrl.<span style=3D=22color:rgb(220,220,170)=
=22>flush=5Fand=5Freset</span>();</div>
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>en=
d=5Ftest</span>();</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Start=
 the clocks running. We wait to start them until this testbench</span></d=
iv>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// runs =
because we don't want to waste the simulator's CPU time by</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// simul=
ating idle clock cycles.</span></div>
<div>&=23160; &=23160; rfnoc=5Fchdr=5Fclk=5Fgen.<span style=3D=22color:rg=
b(220,220,170)=22>start</span>();</div>
<div>&=23160; &=23160; rfnoc=5Fctrl=5Fclk=5Fgen.<span style=3D=22color:rg=
b(220,220,170)=22>start</span>();</div>
<div>&=23160; &=23160; ce=5Fclk=5Fgen.<span style=3D=22color:rgb(220,220,=
170)=22>start</span>();</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Verif=
y Block Info</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<br />
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>st=
art=5Ftest</span>(<span style=3D=22color:rgb(206,145,120)=22>=22Verify Bl=
ock Info=22</span>, <span style=3D=22color:rgb(181,206,168)=22>2us</span>=
);</div>
<div>&=23160; &=23160; =60ASSERT=5FERROR(blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>get=5Fnoc=5Fid</span>() =3D=3D NOC=5FID, <span styl=
e=3D=22color:rgb(206,145,120)=22>=22Incorrect NOC=5FID Value=22</span>);<=
/div>
<div>&=23160; &=23160; =60ASSERT=5FERROR(blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>get=5Fnum=5Fdata=5Fi</span>() =3D=3D NUM=5FPORTS=5F=
I, <span style=3D=22color:rgb(206,145,120)=22>=22Incorrect NUM=5FDATA=5FI=
 Value=22</span>);</div>
<div>&=23160; &=23160; =60ASSERT=5FERROR(blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>get=5Fnum=5Fdata=5Fo</span>() =3D=3D NUM=5FPORTS=5F=
O, <span style=3D=22color:rgb(206,145,120)=22>=22Incorrect NUM=5FDATA=5FO=
 Value=22</span>);</div>
<div>&=23160; &=23160; =60ASSERT=5FERROR(blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>get=5Fmtu</span>() =3D=3D MTU, <span style=3D=22col=
or:rgb(206,145,120)=22>=22Incorrect MTU Value=22</span>);</div>
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>en=
d=5Ftest</span>();</div>
<br />
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>st=
art=5Ftest</span>(<span style=3D=22color:rgb(206,145,120)=22>=22Verify Sl=
ave TREADY=22</span>, <span style=3D=22color:rgb(181,206,168)=22>2us</spa=
n>);</div>
<div>&=23160; &=23160; =60ASSERT=5FERROR(s=5Frfnoc=5Fchdr=5Ftready =3D=3D=
 <span style=3D=22color:rgb(181,206,168)=22>1'b1</span>, <span style=3D=22=
color:rgb(206,145,120)=22>=22Slave TREADY is not 1=22</span>);</div>
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>en=
d=5Ftest</span>();</div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Test =
Sequences</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// begin=
</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; // Read and write the gain register to make sure it updates correctly=
.</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; logic =5B31:0=5D val32;</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; test.start=5Ftest(=22Verify a register=22, 5us);</span></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; blk=5Fctrl.reg=5Fread(256, val32);</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; =60ASSERT=5FERROR(</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; &=23160; val32 =3D=3D 0, =22Initial value for 0x100 is not 0=22);</sp=
an></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; // Write a value wider than the register to verify the width</span></=
div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; blk=5Fctrl.reg=5Fwrite(256, 32'h12348765);</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; blk=5Fctrl.reg=5Fread(256, val32);</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; =60ASSERT=5FERROR(</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; &=23160; val32 =3D=3D 32'h8765, =22Readback value for 0x100 is not co=
rrect=22);</span></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &=231=
60; test.end=5Ftest();</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// end</=
span></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// &lt;A=
dd your test code here&gt;</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// test.=
start=5Ftest(=22&lt;Name your first test&gt;=22, 100us);</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// =60AS=
SERT=5FWARNING(0, =22This testbench doesn't test anything yet=21=22);</sp=
an></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// test.=
end=5Ftest();</span></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>begin</=
span></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(86,15=
6,214)=22>localparam shortint</span> MAX=5FTEST=5FVAL =3D &=23160;<span s=
tyle=3D=22color:rgb(181,206,168)=22>255</span>;</div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(86,15=
6,214)=22>localparam shortint</span> MIN=5FTEST=5FVAL =3D -<span style=3D=
=22color:rgb(181,206,168)=22>255</span>;</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(86,15=
6,214)=22>packet=5Finfo=5Ft</span> pkt=5Finfo;</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; item=5Ft send=5Fsamples=5B=24=5D=
; &=23160; &=23160;<span style=3D=22color:rgb(106,153,85)=22>// Sample wo=
rds</span></div>
<div>&=23160; &=23160; &=23160; &=23160; item=5Ft recv=5Fsamples=5B=24=5D=
; &=23160; &=23160;<span style=3D=22color:rgb(106,153,85)=22>// Sample wo=
rds</span></div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// Read and write the gain register to make sure it updates cor=
rectly.</span></div>
<div>&=23160; &=23160; &=23160; &=23160; test.<span style=3D=22color:rgb(=
220,220,170)=22>start=5Ftest</span>(<span style=3D=22color:rgb(206,145,12=
0)=22>=22Check data flows through multiddc=22</span>, <span style=3D=22co=
lor:rgb(181,206,168)=22>40us</span>);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// Generate a payload of random samples in the range =5B-255, 2=
55=5D, two</span></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// samples per CHDR word.</span></div>
<div>&=23160; &=23160; &=23160; &=23160; send=5Fsamples =3D =7B=7D;</div>=

<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(197,1=
34,192)=22>for</span> (<span style=3D=22color:rgb(86,156,214)=22>int</spa=
n> i =3D <span style=3D=22color:rgb(181,206,168)=22>0</span>; i &lt; SPP;=
 i++) <span style=3D=22color:rgb(197,134,192)=22>begin</span></div>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; send=5Fsamples=
.<span style=3D=22color:rgb(220,220,170)=22>push=5Fback</span>(=7B</div>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; <span style=3D=
=22color:rgb(106,153,85)=22>// rand=5Fshortint(MIN=5FTEST=5FVAL, MAX=5FTE=
ST=5FVAL), &=23160;// I</span></div>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; <span style=3D=
=22color:rgb(106,153,85)=22>// rand=5Fshortint(MIN=5FTEST=5FVAL, MAX=5FTE=
ST=5FVAL) &=23160; // Q</span></div>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; <span style=3D=
=22color:rgb(181,206,168)=22>16'hff</span>,</div>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; <span style=3D=
=22color:rgb(181,206,168)=22>16'hff</span></div>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; =7D);</div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(197,1=
34,192)=22>end</span></div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// check that dut is ready to receive</span></div>
<div>&=23160; &=23160; &=23160; &=23160; =60ASSERT=5FERROR(s=5Frfnoc=5Fch=
dr=5Ftready =3D=3D <span style=3D=22color:rgb(181,206,168)=22>1'b1</span>=
, <span style=3D=22color:rgb(206,145,120)=22>=22Slave TREADY is not 1=22<=
/span>);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// wait for slaves to assert TREADY</span></div>
<div>// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
</div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(220,2=
20,170)=22>=24display</span>(<span style=3D=22color:rgb(206,145,120)=22>=22=
Waiting for TREADY on the B=46M slave...=22</span>);</div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(197,1=
34,192)=22>wait</span>(m=5Frfnoc=5Fchdr=5Ftready =21=3D <span style=3D=22=
color:rgb(181,206,168)=22>5'b00000</span>) <span style=3D=22color:rgb(220=
,220,170)=22>=24display</span>(<span style=3D=22color:rgb(220,220,170)=22=
>=24time</span>, <span style=3D=22color:rgb(206,145,120)=22>=22 m=5Frfnoc=
=5Fchdr=5Ftready=3D'b</span><span style=3D=22color:rgb(156,220,254)=22>%b=
</span><span style=3D=22color:rgb(206,145,120)=22>=22</span>, m=5Frfnoc=5F=
chdr=5Ftready);</div>
<div>// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
</div>
<div><br /></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// check sinks are asserting TREADY</span></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(220,2=
20,170)=22>=24display</span>(<span style=3D=22color:rgb(220,220,170)=22>=24=
time</span>, <span style=3D=22color:rgb(206,145,120)=22>=22 m=5Frfnoc=5Fc=
hdr=5Ftready=3D'b</span><span style=3D=22color:rgb(156,220,254)=22>%b</sp=
an><span style=3D=22color:rgb(206,145,120)=22>=22</span>, m=5Frfnoc=5Fchd=
r=5Ftready);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// model some back-pressure if needed</span></div>
<div>&=23160; &=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>set=5Fslave=5Fstall=5Fprob</span>(<span style=3D=22=
color:rgb(181,206,168)=22>0</span>, <span style=3D=22color:rgb(181,206,16=
8)=22>0</span>);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// Queue a packet for transfer</span></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// pkt=5Finfo =3D 0;</span></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// pkt=5Finfo.eob =3D 1;</span></div>
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// blk=5Fctrl.send=5Fitems(0, send=5Fsamples, , pkt=5Finfo);</s=
pan></div>
<div>&=23160; &=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>send=5Fitems</span>(<span style=3D=22color:rgb(181,=
206,168)=22>0</span>, send=5Fsamples);</div>
<div>&=23160; &=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>wait=5Fcomplete</span>(<span style=3D=22color:rgb(1=
81,206,168)=22>0</span>);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(220,2=
20,170)=22>=24display</span>(<span style=3D=22color:rgb(220,220,170)=22>=24=
time</span>, <span style=3D=22color:rgb(206,145,120)=22>=22Send complete=22=
</span>);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(220,2=
20,170)=22>=24display</span>(<span style=3D=22color:rgb(220,220,170)=22>=24=
time</span>, <span style=3D=22color:rgb(206,145,120)=22>=22 TX Size=3D'</=
span><span style=3D=22color:rgb(156,220,254)=22>%d</span><span style=3D=22=
color:rgb(206,145,120)=22>=22</span>, send=5Fsamples.<span style=3D=22col=
or:rgb(220,220,170)=22>size</span>());</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// Receive the output packet</span></div>
<div>&=23160; &=23160; &=23160; &=23160; blk=5Fctrl.<span style=3D=22colo=
r:rgb(220,220,170)=22>recv=5Fitems</span>(<span style=3D=22color:rgb(181,=
206,168)=22>0</span>, recv=5Fsamples);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; <span style=3D=22color:rgb(106,1=
53,85)=22>// Check the resulting payload size</span></div>
<div>&=23160; &=23160; &=23160; &=23160; =60ASSERT=5FERROR(recv=5Fsamples=
.<span style=3D=22color:rgb(220,220,170)=22>size</span>() =3D=3D SPP,</di=
v>
<div>&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; <span style=3D=
=22color:rgb(206,145,120)=22>=22Received payload didn't match size of pay=
load sent=22</span>);</div>
<br />
<div>&=23160; &=23160; &=23160; &=23160; test.<span style=3D=22color:rgb(=
220,220,170)=22>end=5Ftest</span>();</div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(197,134,192)=22>end</sp=
an></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// =46in=
ish Up</span></div>
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>//------=
--------------------------</span></div>
<br />
<div>&=23160; &=23160; <span style=3D=22color:rgb(106,153,85)=22>// Displ=
ay final statistics and results</span></div>
<div>&=23160; &=23160; test.<span style=3D=22color:rgb(220,220,170)=22>en=
d=5Ftb</span>();</div>
<div>&=23160; <span style=3D=22color:rgb(197,134,192)=22>end</span> : tb=5F=
main</div>
<br />
<div><span style=3D=22color:rgb(197,134,192)=22>endmodule</span> : rfnoc=5F=
block=5Fmultiddc=5Ftb</div>
<br />
<br />
<div>=60default=5Fnettype <span style=3D=22color:rgb(156,220,254)=22>wire=
</span></div>
</div>
</div>
</div>
</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Wed, 14 Sept 2022 at 1=
2:30, Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22 target=
=3D=22=5Fblank=22>zs1kwa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>Hi Rob, thanks for that testbench advice.
<div><br /></div>
<div>My core will not provide output if it does not see TREADY on its mas=
ter interfaces. (Which I have verified by simulating the core on its own.=
)</div>
<div><br /></div>
<div>I have used the rfnoc-example testbench for reference, and issue a =22=
blk=5Fctrl.send=5Fitems(0, send=5Fsamples)=22.</div>
<div><br /></div>
<div>Monitoring the rfnoc signal =22m=5Frfnoc=5Fchdr=5Ftready=22 in the t=
estbench shows that it never transitions from zero's at the beginning of =
the simulation.</div>
<div><br /></div>
<div>Should I see the B=46M slave asserting these signals=3F (I cannot dr=
ive them from my testbench - I get a warning about multiple drivers.)</di=
v>
</div>
</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Tue, 13 Sept 2022 at 1=
5:49, Rob Kossler &lt;<a href=3D=22mailto:rkossler=40nd.edu=22 target=3D=22=
=5Fblank=22>rkossler=40nd.edu</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>Have you tried to run an rfnoc-style testbench such =
as in the rfnoc-example=3F&=23160; If not, this may be useful.&=23160; If=
 you try this, it may be easier to follow the example if you change your =
output number of ports to be 1 so that it is a simple 1-to-1 block.
<div>Rob</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Tue, Sep 13, 2022 at 6=
:36 AM Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22 targe=
t=3D=22=5Fblank=22>zs1kwa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>Hi Rob,
<div><br /></div>
<div>I can confirm the radio streams correctly.</div>
<div><br /></div>
<div>I have also tried tx=5Fstreamer =3D&gt; multiDDC =3D&gt; rx=5Fstream=
er which successfully sends a number of samples, but none are received. (=
The script is below.)</div>
<div><br /></div>
<div>Just to summarize, the IP core seems to be behaving correctly when s=
imulated in Vivado where I apply AXI handshaking, reset the core, and clo=
ck it.</div>
<div><br /></div>
<div>I have set all endpoints in the design as follows:<br /></div>
<div>
<div><br /></div>
<div>&=23160; ep0:&=23160; &=23160; &=23160; &=23160; &=23160; &=23160; &=
=23160; &=23160; &=23160; &=23160; &=23160; &=23160;=23 Stream endpoint n=
ame</div>
<div>&=23160; &=23160; ctrl: True&=23160; &=23160; &=23160; &=23160; &=23=
160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; =23 Endpoint p=
asses control traffic</div>
<div>&=23160; &=23160; data: True&=23160; &=23160; &=23160; &=23160; &=23=
160; &=23160; &=23160; &=23160; &=23160; &=23160; &=23160; =23 Endpoint p=
asses data traffic</div>
<div>&=23160; &=23160; buff=5Fsize: 32768&=23160; &=23160; &=23160; &=231=
60; &=23160; &=23160; &=23160; &=23160; =23 Ingress buffer size for data<=
/div>
</div>
<div><br /></div>
<div>Regards, Kevin</div>
<div><br /></div>
<div><br /></div>
<div>
<div>graph =3D uhd.rfnoc.RfnocGraph(=22type=3Dx300,addr=3D192.168.30.2=22=
)</div>
<div><br /></div>
<div>tx=5Fstreamer =3D graph.create=5Ftx=5Fstreamer(1, uhd.usrp.StreamArg=
s(=22sc16=22, =22sc16=22))</div>
<div>rx=5Fstreamer =3D graph.create=5Frx=5Fstreamer(1, uhd.usrp.StreamArg=
s(=22sc16=22, =22sc16=22))</div>
<div><br /></div>
<div>gb =3D graph.get=5Fblock(=220/multiddc=230=22)</div>
<div>graph.connect(tx=5Fstreamer, 0, gb.get=5Funique=5Fid(), 0)<br /></di=
v>
<div>graph.connect(gb.get=5Funique=5Fid(), 0, rx=5Fstreamer, 0)</div>
<div>graph.commit()</div>
<div><br /></div>
<div>num=5Fsamps =3D 4 * tx=5Fstreamer.get=5Fmax=5Fnum=5Fsamps()</div>
<div>send=5Fsamps =3D np.array(=5B=5B0x40004000=5D * num=5Fsamps=5D, dtyp=
e=3D=22int32=22)</div>
<div><br /></div>
<div>tx=5Fmd =3D uhd.types.TXMetadata()</div>
<div>tx=5Fmd.start=5Fof=5Fburst =3D True</div>
<div>tx=5Fmd.end=5Fof=5Fburst =3D True</div>
<div><br /></div>
<div>recv=5Fsamps =3D np.zeros((1, num=5Fsamps), dtype=3D=22int32=22)</di=
v>
<div><br /></div>
<div>rx=5Fmd =3D uhd.types.RXMetadata()</div>
<div><br /></div>
<div>num=5Fsent =3D tx=5Fstreamer.send(send=5Fsamps, uhd.types.TXMetadata=
())</div>
<div>num=5Frecv =3D rx=5Fstreamer.recv(recv=5Fsamps, rx=5Fmd, 0.1)<br /><=
/div>
</div>
<div><br /></div>
</div>
</div>
</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Tue, 13 Sept 2022 at 0=
0:36, Rob Kossler &lt;<a href=3D=22mailto:rkossler=40nd.edu=22 target=3D=22=
=5Fblank=22>rkossler=40nd.edu</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>One more thought. If the =46PGA version that you bui=
lt with dynamic linking, you should be able to create an R=46NoC Graph as=
 follows:
<div>&=23160; tx=5Fstreamer =3D&gt; multiDDC =3D&gt; rx=5Fstreamer(s)</di=
v>
<div>This way you can eliminate the radio from the equation and test in a=
 very similar fashion to the way it is tested in a testbench.</div>
<div><br /></div>
<div>Rob</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, Sep 12, 2022 at 6=
:33 PM Rob Kossler &lt;<a href=3D=22mailto:rkossler=40nd.edu=22 target=3D=
=22=5Fblank=22>rkossler=40nd.edu</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>Oops. Ignore what I said. I now realize you stated y=
ou were getting an Overflow which of course you would never get if stream=
ing hadn't started.
<div>Rob</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, Sep 12, 2022 at 6=
:32 PM Rob Kossler &lt;<a href=3D=22mailto:rkossler=40nd.edu=22 target=3D=
=22=5Fblank=22>rkossler=40nd.edu</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>Are you sure that the radio is even streaming=3F&=23=
160; The typical method for starting streaming is to tell the rx=5Fstream=
er to start streaming.&=23160; Then, in UHD-land, the rx=5Fstreamer ctrl =
tells the next upstring block to start streaming such that this streaming=
 command propagates up the chain until the radio receives it and starts s=
treaming.&=23160; So, if your custom block does not forward the streaming=
 command from the rx=5Fstreamer to the radio, then the radio never even s=
tarts streaming.&=23160; You can verify by simply monitoring the LEDs.
<div><br /></div>
<div>If this is the problem, you can go-around the intended use by simply=
 telling the radio to start streaming rather than the rx=5Fstreamer.&=231=
60; Or, of course, you can modify your custom block controller to propaga=
te the streaming command.<br />
<div>Rob</div>
</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, Sep 12, 2022 at 4=
:18 PM Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22 targe=
t=3D=22=5Fblank=22>zs1kwa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>Yes, of course. But I don't get 1 sample from the dd=
c's, even with just one channel of a 2:1 decimated channel connected to t=
he rx streamer.</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, 12 Sept 2022 at 2=
2:13, Jonathon Pendlum &lt;<a href=3D=22mailto:jonathon.pendlum=40ettus.c=
om=22 target=3D=22=5Fblank=22>jonathon.pendlum=40ettus.com</a>&gt; wrote:=
<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>The aggregate output rate of the 5 streams could req=
uire more bandwidth than the 10 GigE interface can sustain. What are the =
exact output rates=3F</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, Sep 12, 2022 at 3=
:53 PM Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22 targe=
t=3D=22=5Fblank=22>zs1kwa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>Those rates vary from a 2:1 decimation down to other=
 rates.
<div><br /></div>
<div>The host has 10 Gbe interfaces to the USRP.</div>
<div><br /></div>
<div>I get samples if i connect the radio to the rx streamer, just nothin=
g from the ddc's.</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, 12 Sept 2022 at 2=
1:48, Jonathon Pendlum &lt;<a href=3D=22mailto:jonathon.pendlum=40ettus.c=
om=22 target=3D=22=5Fblank=22>jonathon.pendlum=40ettus.com</a>&gt; wrote:=
<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>Hi Kevin,
<div><br /></div>
<div>What are the sample rates for the 5 outputs=3F What connection are y=
ou using to your host PC, 1 GigE or 10 GigE=3F</div>
<div><br /></div>
<div>Jonathon</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, Sep 12, 2022 at 3=
:38 PM Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22 targe=
t=3D=22=5Fblank=22>zs1kwa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>Hi Jonathon,
<div><br /></div>
<div>I've got an x310. The flowgraph is a simple radio-&gt;multiddc-&gt;(=
to 5x outputs). I've tried both static and dynamic routing from the radio=
 block. I.e. the static route version:</div>
<div><br /></div>
<div>
<div>=7C&=23160; &=23160; /</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160; &=23160; &=23160;Static con=
nections on this device:</div>
<div>=7C&=23160; &=23160;=7C</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160;* 0/Radio=230:0=3D=3D&gt;0/m=
ultiddc=230:0</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160;* 0/multiddc=230:0=3D=3D&gt;=
0/SEP=232:0</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160;* 0/multiddc=230:1=3D=3D&gt;=
0/SEP=233:0</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160;* 0/multiddc=230:2=3D=3D&gt;=
0/SEP=234:0</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160;* 0/multiddc=230:3=3D=3D&gt;=
0/SEP=235:0</div>
<div>=7C&=23160; &=23160;=7C&=23160; &=23160;* 0/multiddc=230:4=3D=3D&gt;=
0/SEP=236:0</div>
</div>
<div><br /></div>
<div><br /></div>
<div>On the input side it is all at the radio rate, but I hope my core is=
 being clocked at 214 MHz.</div>
<div><br /></div>
<div>When I simulate my IP core (which includes the AXI streaming interfa=
ces) it looks ok.</div>
<div><br /></div>
<div>Regards, Kevin</div>
</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, 12 Sept 2022 at 2=
1:29, Jonathon Pendlum &lt;<a href=3D=22mailto:jonathon.pendlum=40ettus.c=
om=22 target=3D=22=5Fblank=22>jonathon.pendlum=40ettus.com</a>&gt; wrote:=
<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>Hello Kevin,
<div><br /></div>
<div>What device are you using and what does your flowgraph look like=3F =
What sample rate are you running at=3F If your block is running at the ra=
dio sample rate (e.g. 200 MSPS on a X310), your block will need to proces=
s one input sample every clock cycle on average.</div>
<div><br /></div>
<div>Jonathon</div>
</div>
<br />
<div class=3D=22gmail=5Fquote=22>
<div dir=3D=22ltr=22 class=3D=22gmail=5Fattr=22>On Mon, Sep 12, 2022 at 9=
:09 AM Kevin Williams &lt;<a href=3D=22mailto:zs1kwa=40gmail.com=22 targe=
t=3D=22=5Fblank=22>zs1kwa=40gmail.com</a>&gt; wrote:<br /></div>
<blockquote class=3D=22gmail=5Fquote=22 style=3D=22margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>
<div dir=3D=22ltr=22>Hi All,
<div><br /></div>
<div>I've got an IP core that is causing an =22ERROR=5FCODE=5FOVER=46LOW=22=
 when used in an R=46NoC project.</div>
<div><br /></div>
<div>The core responds correctly when simulated outside the R=46NoC envir=
onment. (I can see correct output, the AXI streaming signalling, back-pre=
ssure when required, etc.)</div>
<div><br /></div>
<div>I'm not sure how to go about debugging this, and am not yet familiar=
 enough with R=46NoC to know what to ask.</div>
<div><br /></div>
<div>I have been thinking it was the core not being reset or clocked corr=
ectly, but this is how it gets instantiated:</div>
<div><br /></div>
<div>
<div>&=23160; multiddc multiddc=5Fi (</div>
<div>&=23160; &=23160; //&=23160; &=23160;- Using different clocks for th=
e IP core and the AXI interface. The IPCore=5FClk and AXILite=5FACLK must=
 be&=23160;<br /></div>
<div>&=23160; &=23160; //&=23160; &=23160; &=23160;synchronous and connec=
ted to the same clock source. The IPCore=5FRESETN and AXILite=5FARESETN m=
ust be&=23160;</div>
<div>&=23160; &=23160; //&=23160; &=23160; &=23160;connected to the same =
reset source. See Synchronization of Global Reset Signal to IP Core Clock=
 Domain.</div>
<div>&=23160; &=23160; .IPCORE=5FCLK&=23160; &=23160; &=23160; &=23160; &=
=23160; &=23160; &=23160; &=23160; (axis=5Fdata=5Fclk),</div>
<div>&=23160; &=23160; .IPCORE=5FRESETN&=23160; &=23160; &=23160; &=23160=
; &=23160; &=23160; &=23160;(=7Eaxis=5Fdata=5Frst),</div>
<div><br /></div>
<div>&=23160; &=23160; .AXI4=5FLite=5FACLK&=23160; &=23160; &=23160; &=23=
160; &=23160; &=23160; (axis=5Fdata=5Fclk),</div>
<div>&=23160; &=23160; .AXI4=5FLite=5FARESETN&=23160; &=23160; &=23160; &=
=23160; &=23160;(=7Eaxis=5Fdata=5Frst),</div>
</div>
<div><br /></div>
<div>The core YAML file describes the clock as:</div>
<div><br /></div>
<div>
<div>data:</div>
<div>&=23160; fpga=5Fiface: axis=5Fchdr</div>
<div>&=23160; clk=5Fdomain: ce</div>
</div>
<div><br /></div>
<div>In the project YAML file:</div>
<div><br /></div>
<div>
<div>clk=5Fdomains:</div>
<div>&=23160; &=23160; - =7B srcblk: =5Fdevice=5F, srcport: radio, dstblk=
: radio0,&=23160; &=23160; dstport: radio =7D</div>
<div>&=23160; &=23160; - =7B srcblk: =5Fdevice=5F, srcport: ce,&=23160; &=
=23160; dstblk: multiddc0, dstport: ce =7D</div>
</div>
<div><br /></div>
<div>Is there something that might be an obvious first place to check=3F<=
/div>
<div><br /></div>
<div>Many thanks, Kevin<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
</div>
</div>
</div>
</div>
</div>
</div>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list -- <a href=3D=22mailto:usrp-users=40lists.ettus.c=
om=22 target=3D=22=5Fblank=22>usrp-users=40lists.ettus.com</a><br />
To unsubscribe send an email to <a href=3D=22mailto:usrp-users-leave=40li=
sts.ettus.com=22 target=3D=22=5Fblank=22>usrp-users-leave=40lists.ettus.c=
om</a><br /></blockquote>
</div>
</blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
</blockquote>
</div>
</blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
</blockquote>
</div>
</blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list -- <a href=3D=22mailto:usrp-users=40lists.ettus.c=
om=22 target=3D=22=5Fblank=22>usrp-users=40lists.ettus.com</a><br />
To unsubscribe send an email to <a href=3D=22mailto:usrp-users-leave=40li=
sts.ettus.com=22 target=3D=22=5Fblank=22>usrp-users-leave=40lists.ettus.c=
om</a><br /></blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
</blockquote>
</div>
<br clear=3D=22all=22 />
<div><br /></div>
--<br />
<div dir=3D=22ltr=22>Kevin Williams</div>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list -- <a href=3D=22mailto:usrp-users=40lists.ettus.c=
om=22 target=3D=22=5Fblank=22>usrp-users=40lists.ettus.com</a><br />
To unsubscribe send an email to <a href=3D=22mailto:usrp-users-leave=40li=
sts.ettus.com=22 target=3D=22=5Fblank=22>usrp-users-leave=40lists.ettus.c=
om</a><br /></blockquote>
</div>
</blockquote>
</div>
</body>
</html>

--63221593_327b23c6_983--

--===============3731994533930455388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3731994533930455388==--
