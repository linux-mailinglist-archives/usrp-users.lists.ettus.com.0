Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B54B78BFA8
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 19:32:36 +0200 (CEST)
Received: from [::1] (port=33880 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxaes-00065T-PU; Tue, 13 Aug 2019 13:32:30 -0400
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:60539)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hxaep-0005zo-Ru
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 13:32:27 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id B14782FD;
 Tue, 13 Aug 2019 13:31:46 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Tue, 13 Aug 2019 13:31:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Jq5vzP
 2kwBkddWGmH8T+V6DjkOd7ei99YYh5MhY8A1E=; b=vxgdc3JepkUH5TzZmE/XNP
 /Fs8zdKfWeWIrY8owhXkh71GHiCdZtXRBrbq5sHdENO+Q+fhfDhuiAThHOHuz95+
 o19KMoZs/nwaj80lz8vFM4qkoaUOLE/Bhfp8hiLCDbXVi9TsrOkgzEKJcwy2Lhqv
 HnFRPbcTxcgb/KgdA0B4qgxiZ95tUSNbxmfxhSWboPD1RgOCGULIWdzBTnJ+WiXW
 iCR/fLtzuSp1jvWnQHv+Kn4ntUWTa1bMmUtQmRhaZYZqQEwa+uy3s28VWE76Ix8i
 p2KC3BzqZVaRf4jjQTHmoucTCQJLPGlFH0U/U2efwr/66048k9aAQj7aMVTG3O+w
 ==
X-ME-Sender: <xms:AfRSXRxD3LoEgfwVTCiB9swJmRrLXedJb-5PY0Prrp89dRw6C4DihQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddviedguddutdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofhi
 tghhrggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtth
 hushdrtghomheqnecuffhomhgrihhnpegvthhtuhhsrdgtohhmnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuhhsrdgtohhmnecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:AfRSXSjXPRW6Z2pDODAc5lVKQXQQ8rCT3IihBOWyEDr7rEFnDeww5A>
 <xmx:AfRSXTyQSiapH9BrTehv-Ss1DN-eAMQCGirneB3LeI-jGuBldZLFWA>
 <xmx:AfRSXZtiFp3q1aOkMmV-ZMoP3vGzKd-mH5Q7Im82CfwmC7GMTEab1w>
 <xmx:AvRSXb34j6OJuVMvk32MVgJFLEYLlx06fbtmYta_N0bmRAEDTbRTDw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id BB276520093; Tue, 13 Aug 2019 13:31:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-868-g07f9431-fmstable-20190813v2
Mime-Version: 1.0
Message-Id: <c0a28d10-1f50-46e4-9131-6df3c2dbee0a@www.fastmail.com>
In-Reply-To: <CADrptxURrkg82rUbQwHHWiV3jFn2-mGSEPO9tyqZ+DvxSEKJBg@mail.gmail.com>
References: <CADrptxUKJk6Em7Mk8R-tD_N9taR=ZyVAXbutKcNGNBsnjDi9NQ@mail.gmail.com>
 <fcf49dc3-c5b0-4020-b38a-eb47b87ec8c7@www.fastmail.com>
 <CADrptxURrkg82rUbQwHHWiV3jFn2-mGSEPO9tyqZ+DvxSEKJBg@mail.gmail.com>
Date: Tue, 13 Aug 2019 13:31:45 -0400
To: "Emil Bjelski" <emil.bjelski@gmail.com>
Subject: Re: [USRP-users] Compiling UHD examples errors
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2502846761474607916=="
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

--===============2502846761474607916==
Content-Type: multipart/alternative;
 boundary=0c44efdd348a4531bec183a019536ac8

--0c44efdd348a4531bec183a019536ac8
Content-Type: text/plain

OK; that OS is great for GR / UHD / RFNoC work. What step are you on in the guide?

On Tue, Aug 13, 2019, at 12:51 PM, Emil Bjelski wrote:
> Hello Michael,
> 
> I am using Ubuntu 18.04.2 LTS.
> 
> I installed UHD, GnuRadio and RFNoC using pybombs by following "Getting stared with RFNoC development tutorial":
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
> 
> Kind Regards,
> 
> Emil

--0c44efdd348a4531bec183a019536ac8
Content-Type: text/html

<!DOCTYPE html><html><head><title></title><style type="text/css">p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div style="font-family:Arial;">OK; that OS is great for GR / UHD / RFNoC work. What step are you on in the guide?<br></div><div style="font-family:Arial;"><br></div><div>On Tue, Aug 13, 2019, at 12:51 PM, Emil Bjelski wrote:<br></div><blockquote type="cite" id="qt"><div dir="ltr"><div>Hello Michael,<br></div><div><br></div><div>I am using Ubuntu 18.04.2 LTS.<br></div><div><br></div><div>I installed UHD, GnuRadio and RFNoC using pybombs by following "Getting stared with RFNoC development tutorial":<br></div><div><a href="https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br></div><div><br></div><div>Kind Regards,<br></div><div><br></div><div>Emil<br></div></div></blockquote><div style="font-family:Arial;"><br></div></body></html>
--0c44efdd348a4531bec183a019536ac8--


--===============2502846761474607916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2502846761474607916==--

