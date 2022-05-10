Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 825DA5215D9
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 14:49:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69EFC384A04
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 08:49:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652186994; bh=R+tFMPhyARTwxpdVQMN1gzoUtEcOL/ffBP+MTsDEYMs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=myGIUKR2hQQ9X/LTBIc3JBNHY++GZ0U3p8XlE3o0n7JJz6j1I8E792r9QT9RKzI8m
	 Ws2qo3InlPzAMLKghNpdresq51zPqcYxoIUqs0Hl2660H1MUcnF0vmIn0+r9BEp95w
	 KxnyqkgNeRmsN4W532/eFSpgiPqNWkyVoAf1aor1i7wcIJBEHfUoGSt7SSqubb7NP+
	 qqZife8nhMEx63rSsEZarBvf1ngRcKn5rX44XPCkdi5FAd3wSP1EbsniQOP9oDiO0S
	 sLBjlwmaz9ARrQCdx6+oGUBaRvjFI+EcwtZlLQkjN1BWrmZhW2U0xYqi0nX4+aCLDB
	 FoDn5Khj1fi3w==
Received: from mx-p1.obspm.fr (mx-p1.obspm.fr [145.238.193.20])
	by mm2.emwd.com (Postfix) with ESMTPS id 134543847AF
	for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 08:48:42 -0400 (EDT)
Received: from [145.238.204.64] (syrtepc117.obspm.fr [145.238.204.64])
	(authenticated bits=0)
	by mx-p1.obspm.fr (8.15.2/8.15.2/DIO Observatoire de Paris - 15/04/10) with ESMTPSA id 24ACmfno069186
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 14:48:41 +0200
Message-ID: <d248eb66-fe86-0491-0faa-d4812b8de069@obspm.fr>
Date: Tue, 10 May 2022 14:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: fr
To: usrp-users@lists.ettus.com
References: <CAHKPiO7qBCWe3LV0yBEn-G4D9mmJ7phYecwYXenq_uTdC7XupA@mail.gmail.com>
 <CAHKPiO6cVHJbYQi4mN+gocbVAOYwFqM6=oQ3neiyGk9obkFc9g@mail.gmail.com>
 <CAFche=h2zUeQnNMaf-LWCQrYtfmNA8b9Xsz-vdREHjti7npt9Q@mail.gmail.com>
From: Maxime.Dupont@obspm.fr
In-Reply-To: <CAFche=h2zUeQnNMaf-LWCQrYtfmNA8b9Xsz-vdREHjti7npt9Q@mail.gmail.com>
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mx-p1.obspm.fr [145.238.193.20]); Tue, 10 May 2022 14:48:41 +0200 (CEST)
X-Virus-Scanned: clamav-milter 0.103.5 at mx-p1
X-Virus-Status: Clean
Message-ID-Hash: 5RFMUHFL2SGUA2IE6TUBUADPL2RCMREW
X-Message-ID-Hash: 5RFMUHFL2SGUA2IE6TUBUADPL2RCMREW
X-MailFrom: Maxime.Dupont@obspm.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Custom block not working properly
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5RFMUHFL2SGUA2IE6TUBUADPL2RCMREW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9037035629259983476=="

This is a multi-part message in MIME format.
--===============9037035629259983476==
Content-Type: multipart/alternative;
 boundary="------------xflBKUH200fctHci4Yjx63t1"
Content-Language: fr

This is a multi-part message in MIME format.
--------------xflBKUH200fctHci4Yjx63t1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I followed the tutorial "Getting started with RFNoc4" for making the 
demo block as suggested in the tutorial. I am working with uhd version 
4.2 and a x310

I can build a FPGA image with the OOT block just fine and I get the 
expected uhd_usrp_probe output:

    |     _____________________________________________________
    |    /
    |   |       RFNoC blocks on this device:
    ...
    |   |   * 0/Block#0
    ...
    |     _____________________________________________________
    |    /
    |   |       Static connections on this device:
    ...
    |   |   * 0/SEP#4:0==>0/Block#0:0
    |   |   * 0/Block#0:0==>0/SEP#4:0
    ...

I succeed in creating my own RFNoc demo block using modtool but actually 
working with it with the cpp file in the app/ directory fails.

Even after modifying most of the CMakefiles files inthe example 
directory (replacing "gain" by "demo") I reach the point where I get the 
following error:

Error: LookupError: This device does not have a block of type 
rfnoc::demo::demo_block_control with ID: 0/Demo#0

So my questions are how can I make my process detect my demo block? What 
should I change in my uhd lib and include if there is a need to? And is 
there maybe a full tutorial delving into the process of making and 
driving a custom block using c++?

Thanks in advance
Maxime

--------------xflBKUH200fctHci4Yjx63t1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi, <br>
    </p>
    <p>I followed the tutorial "Getting started with RFNoc4" for making
      the demo block as suggested in the tutorial. I am working with uhd
      version 4.2 and a x310<br>
    </p>
    <p>I can build a FPGA image with the OOT block just fine and I get
      the expected uhd_usrp_probe output:</p>
    <pre>   |     _____________________________________________________
   |    /
   |   |       RFNoC blocks on this device:
   ...
   |   |   * 0/Block#0
   ...
   |     _____________________________________________________
   |    /
   |   |       Static connections on this device:
   ...
   |   |   * 0/SEP#4:0==&gt;0/Block#0:0
   |   |   * 0/Block#0:0==&gt;0/SEP#4:0
   ... </pre>
    <p>I succeed in creating my own RFNoc demo block using modtool but
      actually working with it with the cpp file in the app/ directory
      fails.</p>
    <p>Even after modifying most of the CMakefiles files inthe example
      directory (replacing "gain" by "demo") I reach the point where I
      get the following error:</p>
    <p>Error: LookupError: This device does not have a block of type
      rfnoc::demo::demo_block_control with ID: 0/Demo#0<br>
    </p>
    <p>So my questions are how can I make my process detect my demo
      block? What should I change in my uhd lib and include if there is
      a need to? And is there maybe a full tutorial delving into the
      process of making and driving a custom block using c++?</p>
    <p>Thanks in advance<br>
      Maxime<br>
    </p>
  </body>
</html>

--------------xflBKUH200fctHci4Yjx63t1--

--===============9037035629259983476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9037035629259983476==--
