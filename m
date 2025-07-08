Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D0AAFD66D
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jul 2025 20:26:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93050386288
	for <lists+usrp-users@lfdr.de>; Tue,  8 Jul 2025 14:26:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751999187; bh=t7ipqRsWYCmFDypY+q2H+eO1jywjlmmC/nmffIJVKt8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HBC3RHOFKFldwZtj0c8k4N8YRS6EWZ7msAMp+G3inMox9iYTv2JAz1ZNKKj3XZh+o
	 b5kWjAN3iA/CNSRqiOjc2Bg0HMyqHuw6yhui2d4E5je87XRgtuZ3efHjxN49BSidlf
	 VcIcT/Ykz+mh4uJQYJs65xCZFtcH/mkawuPKBiJ+P4tKIgc0A77jxDM9lLzgx+Er2w
	 RjsFOtjWOfmwb+dODN3hG2HV2n4bcud7FQCDuzU2ywLD+BAq5ZM0YX8xY+mq+juc12
	 A1ehNFutHbYd39y0RioJthLJK/rSTcRyBq2IXUG94pM0c/X+53b9M7M7IIyyMsDe0F
	 JHAJIk/6jcN/g==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id E70DC386252
	for <usrp-users@lists.ettus.com>; Tue,  8 Jul 2025 14:26:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mMMq0rpR";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ae361e8ec32so938036166b.3
        for <usrp-users@lists.ettus.com>; Tue, 08 Jul 2025 11:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751999164; x=1752603964; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l9l/nuLen37drSj3RHygGGwTMD87Dfp0AZovJmQv8N4=;
        b=mMMq0rpRp13UYBSI6DCyBOZ/fhVX+FEqumX7+czmWlwoWdnq6z36pGo5bXNo8ZEeSi
         TStx1IHX0X/V3q9Zpi5A0iJr4tt5oERGdCySJzlGbdjcLbuQ+A7dln76y/3qigaXFYqt
         Go24xT5xkHAJe+TKoHarF8RA+4Oh1HLrVkTnpcDvtrprG9C0img17mRTcZfakuoxbF1P
         QnHzptx5rYKK+Yr2xHQJ2DUMVNh6LzLSuq4VdSqp5aNNfIdhjueSMTmjEPlcB1J8YbHF
         HeNwpbdL+Y3bJsMaLoMfgzr2vFSOjJ9826HnXxKgXi0+rnHI/jBYxz6xLIiwo7LdgOMy
         744w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751999164; x=1752603964;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l9l/nuLen37drSj3RHygGGwTMD87Dfp0AZovJmQv8N4=;
        b=R/ZmQ60kZvNNHt/+8a9gdphDzkTFpLLpAkpAB1n8/DOQrWk4isbtDHm0pXssCzx/H4
         9R6589bXFXzz2mT7AZaD0yR12jpxfsxZPCIA6X6G4JFVamFE6u1lOXQ3k+m9jvkn+1Hh
         Bse2exDGMBxymonkqUISdwXf6Fe3TXF32yLFie9LIZMYBat3RVBMctKBJ8i9FWDb/STL
         W+091oBXT8nKRFr09KyyIrM6D9kwEw/hdTFr21SC7BT2wyuIMK0CsIr3bU7GqD4M+eSe
         ZvZXglRMSvF2rLCVEJb2VD5Nsyeims3THxyuycreCW4L2T68KYta7wEmhR0HZoZrsiK2
         6wjQ==
X-Gm-Message-State: AOJu0YxnS1pXtiKyEMl8pAamwi+8Wh9mVP9vY7MKKhp44X9B9q6WZeD1
	GhaDZiq8RetlPgIjsG3FD6pbRwwetyyd2CDiZMxYIEniPLue+fgEmxFaR63GjzUAKEz4mJLOLDN
	ZJkjNw1xr8N7C9JC2un/2z1duZJaY3IKoEA==
X-Gm-Gg: ASbGncvMZIhgXSHXz7nsmQMkAhXSIH1H5b6s+SPoZ2c/yA/+5jwhY0e2vv7qzjLFyfh
	RBFZgRFHvbK/HU23nCvG4aY/a9MYo9mtqrDvAS0uW0NwRSBSPTN8S3rKMc49bM+Tu9woCWcr8v2
	b1hA84XGatjM1Jq2mjeYe8jk8+Qxyl52/EUKg6m6O82l0=
X-Google-Smtp-Source: AGHT+IEBYlTa5RAHKvNxAOk77xz5VGoQMFgLCDyaCWqmlAvmzqz7JLQluCOIJfpv1TYIIfavJnp8DyhfuAe0cgLgTTc=
X-Received: by 2002:a17:907:9404:b0:ae3:ed39:89ba with SMTP id
 a640c23a62f3a-ae6b0b1e8dcmr434793766b.11.1751999164167; Tue, 08 Jul 2025
 11:26:04 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 8 Jul 2025 14:25:52 -0400
X-Gm-Features: Ac12FXyIku1Pf1ufpbukzr6kxuslsCvtHk9_ID2O_dqNnHkHeV897wvAwOUIYwM
Message-ID: <CAEXYVK62bcSvMqnhs4x669CijOr1M22wz5QeU9NkEbmsKuUbgg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 2UNIS6OWJYI6DS22EMUV5FWCVSQ4NPF3
X-Message-ID-Hash: 2UNIS6OWJYI6DS22EMUV5FWCVSQ4NPF3
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Asynchronous Messages
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2UNIS6OWJYI6DS22EMUV5FWCVSQ4NPF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4736637014848781840=="

--===============4736637014848781840==
Content-Type: multipart/alternative; boundary="000000000000d3be1106396f1792"

--000000000000d3be1106396f1792
Content-Type: text/plain; charset="UTF-8"

With a custom RFNoC block, are there any examples of what is required to
receive and process asynchronous messages from the custom RFNoC block in
the controller class?

For example, in my FPGA I have some status information I want to print out
every second. I don't want to poll it, and I'd prefer to have the FPGA just
automatically send it off through the control port to be received
asynchronously by my controller block.

So far whenever I've tried it, I get a bad function call message printed
out from UHD.

Thanks,
Brian

--000000000000d3be1106396f1792
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">With a custom RFNoC block, are there any examples of what =
is required to receive and process asynchronous messages from the custom RF=
NoC block in the controller class?<div><br></div><div>For example, in my FP=
GA I have some status information I want to print out every second. I don&#=
39;t want to poll it, and I&#39;d prefer to have the FPGA just automaticall=
y send it off through the control port to be received asynchronously by my =
controller block.</div><div><br></div><div>So far whenever=C2=A0I&#39;ve tr=
ied it, I get a bad function call message printed out from UHD.</div><div><=
br></div><div>Thanks,</div><div>Brian</div></div>

--000000000000d3be1106396f1792--

--===============4736637014848781840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4736637014848781840==--
