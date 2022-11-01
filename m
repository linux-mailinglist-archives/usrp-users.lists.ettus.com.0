Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 318556147FC
	for <lists+usrp-users@lfdr.de>; Tue,  1 Nov 2022 11:54:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1044F384021
	for <lists+usrp-users@lfdr.de>; Tue,  1 Nov 2022 06:54:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667300057; bh=dry1pK5NEml7h76a4g050mtjV/N3KKmwmAZg1/As6jE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=whPV8zp0XnqTo0671jiFp1woOewCvKZi+1v2VOeR7jliLVzhDav22G7Yq6GHDTOMa
	 MzdLCmw12gGTrdqb3yHInxgLJNzU+MzmnTFQN8KGsikurDCgvqyRksBahANWr9xjci
	 3wY9v/I8wbGcgPSmjBfPZpfK+XIl69xFLGonucQYhGLqIZ2RHUcgxs+V16n4tV6fa5
	 bXj6LDiIbmw2M8cyQVXHrsNr5ojDytdgXwIf+qpV2+0YOJ5ejEbxq6YQTz7+zpH8lB
	 JlWP1LmbDxG9zsz+f7asKxmh//hR/DZXF38wmFCoI5G9f8VKafsm+mJX2EqtUZZj7G
	 4RPNRfql3RD7A==
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 61647384021
	for <usrp-users@lists.ettus.com>; Tue,  1 Nov 2022 06:53:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RbHXu04a";
	dkim-atps=neutral
Received: by mail-lj1-f173.google.com with SMTP id x21so18947920ljg.10
        for <usrp-users@lists.ettus.com>; Tue, 01 Nov 2022 03:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=K0pf+g/5jWSZkYGNC0sStHKeLp2eEu/OIXgwC8Cu0Pk=;
        b=RbHXu04a11EcsrBjKU9hOD/FMfLyTb6sUH3jv9ucqExgyGMNmwM3U7/FdJCYS+YAWk
         QkIbEZ+tMfEzFk811DfIIIKPqzlZAhtiDz9iFuHYj7YI/rWoM4+8eRQe62SWwtEdbUX2
         SDjeIAqzYLGnmO2I4Mw3G3BhEN29WszPArd4y30YDwUtPBi237Y5grzxKUdaS88XB83m
         TIGZ9iDrhHcKqyHhzeTKAEdroQMZegZCU/FEjioh5VIRm8BJLEe6Zpn+LVwXAHO+fX3q
         u4XKvqGq3hGHxIT25KOjzkSvp04XaAIY+RyMNP8UaVQ3mqLigoL0Ok0oLCHrnGkGZa7J
         c8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K0pf+g/5jWSZkYGNC0sStHKeLp2eEu/OIXgwC8Cu0Pk=;
        b=RDPd6rLFMk5qujc8xpKO64746HE2xh7m8TLL1e7QKokinV9sbLHrXnm8hQ79CdiS9A
         XWZmmPEaB2llSMHZI0YQFSl0/TRXUFbSt3GqL4cfEREoGeHPSca8qbCtfHeTYzKDhl44
         oIWZxi/NvQ+I8ai97VA79qCOGfZUvw6PSMrjLL8iDTfKAXjrWJU++amiWbBNW+6fkkUJ
         IejoYZNmTBA0kJ6AI0+cTvdQc8lzq+v8RrlgxDwBoh/Ujnj54kIyR5B5eftZfh8jh1pJ
         qoD/BTWPydsMRuwthyamkCvH67KHlW7McACGyHfukuP2hNS6IyIheuxKTkxVMsXnsoUM
         sKyw==
X-Gm-Message-State: ACrzQf0cXEmUPdyD7VlP7wayUQAd+4SKL8AZoCsfx0MyCDGmVo7iE39N
	3OJYXPswikGfpWEpqxAVeva9aQtlr2RkeDZ3Qz43wDID
X-Google-Smtp-Source: AMsMyM4Saj3MsiqEPSFc1pRjzotmsIBHwNAzWykCSlaOoiriDYKjYGa5ADARXZ6k7ExRHERoleL4tUP7mQTnk3Y48Fw=
X-Received: by 2002:a2e:9015:0:b0:277:c44:dad with SMTP id h21-20020a2e9015000000b002770c440dadmr6780864ljg.172.1667300004585;
 Tue, 01 Nov 2022 03:53:24 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Tue, 1 Nov 2022 12:52:48 +0200
Message-ID: <CAJhOL6eM-TH4HEQRXmGkKbDh2qWN8N3VGuJUUnnmijxo1ptX0w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: F5AXG5M2DLQBTCNWN66CTTTWJ7Q5MLJ6
X-Message-ID-Hash: F5AXG5M2DLQBTCNWN66CTTTWJ7Q5MLJ6
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] snmp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F5AXG5M2DLQBTCNWN66CTTTWJ7Q5MLJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0852858332141002609=="

--===============0852858332141002609==
Content-Type: multipart/alternative; boundary="00000000000081e6d205ec668841"

--00000000000081e6d205ec668841
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

Is the generation of SNMP messages feasible in the rfnoc framework?

Thanks, Kevin

--00000000000081e6d205ec668841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Everyone,<div><br></div><div>Is the generation=C2=A0of =
SNMP messages feasible in the rfnoc framework?</div><div><br></div><div>Tha=
nks, Kevin</div></div>

--00000000000081e6d205ec668841--

--===============0852858332141002609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0852858332141002609==--
