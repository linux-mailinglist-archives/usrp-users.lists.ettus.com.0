Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33ABE87B5D3
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 01:36:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00599385411
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 20:36:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710376593; bh=WMog6zJLLccrLHthDuR/I1gzTNezWk/xHBmK+ADDP1o=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nJGuzHSrXWaQmjRxhYbUruxVoBavF+vYgWCVODzlhuX9GUUq3GrYEWlP7wxxE+mmA
	 LxAqFiYDS5VfiKBPxS7MQD4i1rRqsu2R9ePsVvHAaAckjXGLEqEBb7mh6nimpIR0nW
	 BtbJ7t8ZPoXpOnMPxd40yloDr+mGXZQp6gG8Gb2nB9EF+37QuaIQ33GwSMerIUZ9a5
	 XleNKT2aqu1mjQQu3fB1Ibn/Jrwoz4aqDYbSyVtlBz9QtnDE2HgshexKFAHe7rzINN
	 lY29TTc7PccP2nKOQN1IsPmrBVB3dYcNBxhGmOhuDGCrfDRcpbVnWHJmKhbwwLUQTD
	 mXHy0UPKS081w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mm2.emwd.com (Postfix) with ESMTPS id 5999C385344
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 20:36:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20230601.gappssmtp.com header.i=@dolphinsystem-jp.20230601.gappssmtp.com header.b="eDlPGvmi";
	dkim-atps=neutral
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-29c751d57ddso359844a91.1
        for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 17:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20230601.gappssmtp.com; s=20230601; t=1710376572; x=1710981372; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dW38SJuaFhNv4nq1oqwQar357bjDJfidusa6ZpvFHNs=;
        b=eDlPGvmiQGxPo3ljgbt8Kt43Vp2LeXROfWRIheW4Ls02Abn5QxgK+0eY7rBFemt02I
         oU2x+Xi05kAaDbZMk6P8ctARS9y1LppkXXC89AronH/CzRRdg8WC5Ux0gMwpByWIPdRx
         oUaNwpTPc2AIMuprr4kMLIMde7QznpWKUXETgfGsjswkSPO82Xg8PG/dKdwvmD1euH2X
         u8Toa6wSD4ow1HrvREEzURqyqTHYi6e+xR7pbphIxw3iAmdIboW+7/4+a2DESkH5Mb0+
         EH0cgGofHcCyGnRt7dEHMeIoDfEEP7yNogn1EEBcG2RlA/QmQITs+v69L2ETpOwftlpL
         ll9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710376572; x=1710981372;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dW38SJuaFhNv4nq1oqwQar357bjDJfidusa6ZpvFHNs=;
        b=sFRhofDTbdpUBmTwQdIKr8ekvCLre1+zai0cC+r/Qs3bkFaf+Rshm6FaDDce2oYL0E
         APdd+wp59bQvtskAge8dDqfueNehU7TaifQ1f/hAs5mBawl6YDlVAhVCF4WTZMiO06DX
         BpYJElV15uvF+QFD4pyp0C4K9zFTUtgXUvkpEhQmLzK/Ec47Zyou2pDsKtGa6b+NJsVL
         WC2CF8lZO/aMsDr5VVd5Kc6Hdsu1+Qv66DziRajjdJpz+EK5Cqk1wGaHAeB3lRJ3eBnF
         K0sDr8NQpFXxftiYtfpJrN0YShKwGQzXC6egMsbTEakOrPRJIkKooR0iqngj8NxLke8M
         DrvQ==
X-Gm-Message-State: AOJu0Ywyc9OrnRQ0YRfMXy2W0QsT/tP64vE/bfYhaXlw9Hi5cIcZGVdG
	FK+KGEoL+pd1Y2QjCs5sRE3M9k8pzreRhYn/uApsEuWgPSmimT+GC1VzbdJljdr7VjPzX3wjWWm
	rCqVE2sxSFlpJzq/XNspZ/lVyZ86gBNWRU2eeVJEdC1k/ZT+O/oM=
X-Google-Smtp-Source: AGHT+IHGTWUTuqiGmqDfcySu733PhjfF7C3VzP+qyy+rJb9AvNMsDOf00x0a/ZvYGZOpRB2cvRPFcoD9kxNnj+D5cfc=
X-Received: by 2002:a17:90a:c596:b0:29b:b865:3dbf with SMTP id
 l22-20020a17090ac59600b0029bb8653dbfmr246121pjt.48.1710376572158; Wed, 13 Mar
 2024 17:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY@lists.ettus.com>
In-Reply-To: <HfDIBnIBsPNhcRupMdncPLJ49yF7O4U15cLqnx9TY@lists.ettus.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Thu, 14 Mar 2024 09:35:37 +0900
Message-ID: <CABfZwcekxBdPL2O=oPbfj8ngE5Bw-nkOFnPuCK23af0vAAtwTQ@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: K4KZN6PY3EM53K2MFMLURKY555IPXRST
X-Message-ID-Hash: K4KZN6PY3EM53K2MFMLURKY555IPXRST
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Get DPDK working with UHD 4.6 with USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K4KZN6PY3EM53K2MFMLURKY555IPXRST/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5105529179886031926=="

--===============5105529179886031926==
Content-Type: multipart/alternative; boundary="0000000000000424a606139414ef"

--0000000000000424a606139414ef
Content-Type: text/plain; charset="UTF-8"

Hi zackkomo

You should check the HugePages settings.

cat /etc/default/grub

Thanks.

--0000000000000424a606139414ef
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div dir="ltr">Hi zackkomo<br></div><div dir="ltr"><br></div><div>You should check the HugePages settings.</div><div><br></div><div>cat /etc/default/grub<br></div><div><br></div><div>Thanks.</div><div><br></div></div>

--0000000000000424a606139414ef--

--===============5105529179886031926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5105529179886031926==--
