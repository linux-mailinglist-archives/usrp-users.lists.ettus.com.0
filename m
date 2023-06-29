Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8648C74285C
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 16:29:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93FBF3848C3
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 10:29:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688048996; bh=Tkbh2S2CKTz5bjChBI5dCduuNkjriiofCXohitcoq9A=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eIO6DiYO1yWOzWwXkw+RQbeJ9c1k28O0E0Dw2j4cyA57bnyC02XoNzAdKN14SITG+
	 JNLXDrmSrEez9+JwVuO/YZ+9PCQnkbKKOHMXbDcvzfVZOW6Fzu/pdjesubRtpYI/fK
	 F7geyWJo8l6DrNdilL8CZ6FGofTvFiFG1VTwhsASlGw4agZtWmmhZ1ed2Vwf/OtW2S
	 ljVdHVpkdM76lR/mCHLA5A1G5+WZYo40q0mfhvECBqjkqoHg5hp83ILe3AQTHkDG1+
	 FNy6vaRkZ0+Q48VsaFOgOOHu+cqKgZchlKQR3KmrQutoguHW5LfHUsVtUNkFiOJvNR
	 W25uui9r9ng5w==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D2D3383EE0
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 10:29:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hn/Gtsyt";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-40320e38b64so7109971cf.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 07:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688048940; x=1690640940;
        h=to:message-id:subject:date:mime-version:from
         :content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s51Lt+G0Z3WXgh7oYlru2c4sJN6+I1xoQD5NfoqYeh0=;
        b=Hn/Gtsyt7rpqlEKmwwwsLG62MlW3qX6MB5+BZKGQf0AzEILk+twbajOx4dHFnNEIZx
         nHhkjGXJsxaneQLneCTK74f9wMfTPieoF0GKWmlq5RadKAk9D1Qzo33J7Sk2kb9xLut9
         T5WQLgvG+E64WZFhaLqyAQ39LfnbyvrhJ/dR7pmlWbRy9kxRZt+FUqsSuZdJp/msF/T5
         /B8BCXxcNK3/z9UUjwt/6+qvRWLTTeVf2OvfTJXMsqU9yy+rym6dneIDVUjfkmVp2Glv
         m2/HJyVk8qOwYDmvjinWA2IdrUh0mzxdnzxSnXfqzspW7rsU7nSvwZze4Gq3oTBE4E9N
         VBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688048940; x=1690640940;
        h=to:message-id:subject:date:mime-version:from
         :content-transfer-encoding:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=s51Lt+G0Z3WXgh7oYlru2c4sJN6+I1xoQD5NfoqYeh0=;
        b=GtJ5YcasqeUY7q2WGY5YKb+MLvie/PPCxzuW4d09ZyAfkO1mLMABxmz4drYd3rU/yg
         g/kaxFm82/qprE49b3St6BAP4mA3nkGrDI/+bZYrm+rFvdW381ecnKmcuOpRumq8rl73
         p5b7d7yYK9jjUShCUWicH6ouvWT1tE8BJ1qy668ssvxdjJ8p8baBPRrwovodCXhWBaQ8
         W16C2GzgkfEKBCEo+78oaqw6iiq6S0mL/dBeWrH25Ei+NaE+fy7zN84zZ41mG9MEqCpT
         Ec8TIJn3sVrLIDiP/XzJBHzgAlui65MxjLX5+CkBJVC+PokZrxqfTxsLFq3CV7qOzYGi
         n01Q==
X-Gm-Message-State: AC+VfDxRLLoWtzUKFPBrKZfZ3r6MafEj7unJYNNuKjhadBugDPQkbM2v
	OSVdESkHCb31jSlCS4opjUvsH88ye2o=
X-Google-Smtp-Source: ACHHUZ76iGBLWfNzuJJ83xLx1JohmLzzHIi3c6if/UasiHycwwWhImWwe1psdVhf92L3vwssGdL6JQ==
X-Received: by 2002:a05:622a:285:b0:403:270f:a4a3 with SMTP id z5-20020a05622a028500b00403270fa4a3mr4876553qtw.50.1688048939715;
        Thu, 29 Jun 2023 07:28:59 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:4049:ecf3:14f5:b575:d65c:d46c])
        by smtp.gmail.com with ESMTPSA id l8-20020ac84cc8000000b00400aa8592d1sm5139906qtv.36.2023.06.29.07.28.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 07:28:59 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Jun 2023 10:28:45 -0400
Message-Id: <300D7C0A-FE66-4575-85F2-F27C937F5D47@gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Mailer: iPhone Mail (20F75)
Message-ID-Hash: USY5BBFTWANI7MAYPJMINN4AO3NI52WZ
X-Message-ID-Hash: USY5BBFTWANI7MAYPJMINN4AO3NI52WZ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/USY5BBFTWANI7MAYPJMINN4AO3NI52WZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

cmZub2NfaW1hZ2VfYnVpbGRlciBpcyDigJhpbnN0YWxsZWTigJkgb24gbXkgc3lzdGVtIA0KVWJ1
bnR1LCAyMi4wNA0KVUhEIDQuNCAoYnVpbHQgZnJvbSBzb3VyY2UpDQpXaGVuIEkgcnVuIHRoZSB1
dGlsaXR5LCBJIGdldCBhIG1vZHVsZSBub3QgZm91bmQgZXJyb3Igd2hlbiBpdCB0cmllcyB0byBp
bXBvcnQgdWhkLmltZ19idWlsZGVyLiANCuKAnEltcG9ydCB1aGTigJ0gd29ya3MgZmluZSBmcm9t
IGFuIGludGVyYWN0aXZlIHB5dGhvbiBzaGVsbC4gVGhlIGltYWdlIGJ1aWxkZXIgbW9kdWxlIGlz
IHRoZSBpc3N1ZS4NCg0KQW55IHNvbHV0aW9ucywgaGFja3Mgb3Igd29ya2Fyb3VuZHMgd291bGQg
YmUgd2VsY29tZS4gDQoNCjxlbmQgdHJhbnNtaXNzaW9uPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
