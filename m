Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PlpkMIU8IGojzAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 16:39:01 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F66D638AE2
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 16:39:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=cE7k9y6R;
	dkim=fail ("body hash did not verify") header.d=nd.edu header.s=google header.b=GnnyVbf1;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 848DE386078
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jun 2026 10:39:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1780497540; bh=obu10k07CTe6ICcLRWdBa6Or7S8zcsFuMq3xI4umoIw=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=cE7k9y6RP/e8aTw+zI0aBkqFmM/erYpxAm3+DeLQ2YCN0ijknSoc5K+7he65a7xTg
	 EFnQjMSw3eQ7m0soyCaQWvJT1BS6UnetlgkNvZXQkjSovDYvOirpeVhHEVXGVr9UGg
	 bjyl75plFuBc6fh3Sf7+GSOuHHBNmuofeTb49HVAP9uuR2YL6ar6H4bZ5T4+tHsHXC
	 ma0b1dkTBLMFtvad8s0kVpoL0Xb5wyPPFW3jTpAbRWVWzCWphuUTlP9M5jmv8gAe59
	 Mmaaacyv2xnEPAmTcuR3y1U8U/5UgXy3TsXQFe0sm+vt/EsYU3ZLzea4u8blWVuK5C
	 zDdRvBISvveug==
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	by mm2.emwd.com (Postfix) with ESMTPS id C56D2386430
	for <usrp-users@lists.ettus.com>; Wed,  3 Jun 2026 10:38:38 -0400 (EDT)
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-660ea43107fso531162d50.0
        for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2026 07:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780497518; cv=none;
        d=google.com; s=arc-20240605;
        b=G5buvujq0BcI2C9Oy53OINECmZrUsRpSUqx7htC+6ODuZKC4UUHFkpu21Qi6o97/DF
         UoXD0cILyxRWoApcfHSNslWTKf3/kPvMrt2poEk6o7IQXqhOjaajUGrcbLV9UZnB3LAc
         k1nYer9vFHj9sXWCAdcf54qQN7WjOkGbo7Q0IB5ceap5qtVEITaRjLGrgL/4LVcremJX
         TwhmbHZHUAwJZNJNQVqClbYKtgdYdgUBfMtAi2MwLCNB7mZ7tiI9Z9y5esAyqJ/tVj6j
         F41BmH9OR6QLm8vk+Xbt0GXYvL60hO8aIh3FAeMQ9ZNFQ9AmFpj5Jm+J3/pLd+wuAErD
         X0ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HuQgejJ3T7vsQU0LOBf9qURr4Rcuiwg4/Q6u57GTPR0=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=J8y2y5AzSAHbQeHxAj0ecUjIrbg1sjWDn917k1PbdLAUF0t3xmRxRu3SUSc5jTILdT
         R0VlskRJaz31Lq2rpTTwz6HoclvhuUUyu+V+1NlUga8uqgjvqFmvop0DgBQ8UxiYoXa5
         qjvZCN6m73FZo31C9t81llUsfHtI3ra3NO2/r+KDP21nbXjVP7wqwtflzMR28aHrbZOU
         MPOI70z6oeyGFrocLYLdplbrfiZ0RAnvscKuUYMxl5nrAiQiawx3ijIXlpo/ZWoeTkF9
         H1bL7pyJz4yMs7bdnEFF/+Wvj9NslAYCig9dy0+H6B6rzRNc6IkDQNGPAFj3n/yT7bUQ
         Mp5w==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1780497518; x=1781102318; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HuQgejJ3T7vsQU0LOBf9qURr4Rcuiwg4/Q6u57GTPR0=;
        b=GnnyVbf1ZNtIdzMj7Vjw48UvW64XTMiFwX6A7pJaUdxTOT2QrIMuUaW6YCUqQnUteR
         BgyF5P8+u8lHtGmE/pcYTfUHcOSPHFgjvCyj/wKp1SmsZI73uVlVr2yZaNOQEx5vVlxX
         KoZUzyUejkS5bGNJUCNTcAVOGMFCLLbhcMrt4/nFsVqZCBpUIedw7GFhuWDHq1v23h1G
         uhVt+fP+7kQvnpjNlcP/QlOP//y4nRGts7tZ4mgzTwTBi+Kp/ibYPrt3dFpuplE1B7rK
         eOoTKylL1laJIMMa/8/5egn77e34ySJvlYRbyJ7k7VML2f6vburQpydm/YhyZG+R4C8o
         Q/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780497518; x=1781102318;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HuQgejJ3T7vsQU0LOBf9qURr4Rcuiwg4/Q6u57GTPR0=;
        b=W0nbPkDa5By8LkUk5jMWEkXiCAtDcwkHJDhS8KRWtvsaApRFql7Dbcj7xVL7yQKMtR
         COekJBLB8h6rgHA1R/vuyaApn77onKjRT9SsvPpkAll/lab1oS5Eplvd3vLVsCAUWoxQ
         2mHDd+lSa+q7pw1QMt4nz4k5aNfGVDGKRrjcaIYNYKkecoaF3/VRwoUEEzmlFgOMrqEE
         Xg7OAID6KdkvIPV0EHErhlMWnwE0/5XzTwmSZ6tN1xBE0K9nTqx3pSF8l0HalxVcD7hV
         DXhfy6XIm/sRPDAZfwxTX/QrRg6Ll+6GTEq3bVZFiUhvujsxcky4Igx5uMdUopqpCuXY
         feIw==
X-Gm-Message-State: AOJu0YxllE3mgVh/y7Pw9hfZ7A2Z4ndNg5jVdhMygPscEiOTen2ZKQ+O
	1wejtdlQMklx+5ZeYnq+QY8ZoclFlwSSJ5qlPN2e+1DW/wbTZeY7MvS0f+W/0fEC1Cj7R6g9pQG
	DRu9AJTg0ZpFOuJp77ArCJV8AXRS1U4HUsuJ/ZFAWtVV4k/WkkDzazg==
X-Gm-Gg: Acq92OFYBV6VE5IJN9Tt6M1QduVRo8ZYIh4Z7d62r5TUFm35ftGXPkAs96DD15O6kzF
	acAnRWiAtlcSSm4FpAqqNiE/Ah4ORWEJYsDOmHxOpBlyoqpm7bhTPK91WOPaUCn/nfClsqL80Xy
	cLwvxIDIdzqqKSEipflg/hW6ojJPEs2WRrW6IKSsfYLZt0cXjXgxsKUpMH6+kyJC0LIO100mpYB
	3orHas68QmrEIvQoF0FT7tmUo5fBIwM9QIvqIdc/vOGvq+NzIKysPyTA274WUTyIG5bYM8qAWjF
	zKKnwyrEMjYUBIvaXurKbyOk6unSKtmO2gNvBfbaH8OifSWYUHpM4T1w77Y5
X-Received: by 2002:a05:690e:440f:b0:660:6f6b:4acb with SMTP id
 956f58d0204a3-660dc5e2384mr1938164d50.57.1780497518022; Wed, 03 Jun 2026
 07:38:38 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 3 Jun 2026 10:38:27 -0400
X-Gm-Features: AVHnY4LqfAAeMH7g7vHtLMe0uaTlnU1Ck9RMFj4d3fXKrwBYVUxNgIDZGabIZwU
Message-ID: <CAB__hTTOPQ34eDopappgwcujWCnpD3zhv-f6-1eou7H98o3d+g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: H4E3GTJ3T6Z3S5HJX7LJTM4T3WEH2XWN
X-Message-ID-Hash: H4E3GTJ3T6Z3S5HJX7LJTM4T3WEH2XWN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD manual search broken
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H4E3GTJ3T6Z3S5HJX7LJTM4T3WEH2XWN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2688111694073947900=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_EQ_FROM(0.00)[];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.ettus.com:from_mime,lists.ettus.com:from_smtp,mm2.emwd.com:helo,mm2.emwd.com:rdns,ettus.com:url,ettus.com:email,emwd.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F66D638AE2

--===============2688111694073947900==
Content-Type: multipart/alternative; boundary="00000000000015ffbb06535a6257"

--00000000000015ffbb06535a6257
Content-Type: text/plain; charset="UTF-8"

Hi,
In the current UHD manual <https://files.ettus.com/manual/index.html>, the
"search" box no longer works (at least for me). Is Ettus aware?
Rob

--00000000000015ffbb06535a6257
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hi,<br><div>In the current <a href="https://files.ettus.com/manual/index.html">UHD manual</a>, the &quot;search&quot; box no longer works (at least for me). Is Ettus aware?</div><div>Rob</div></div>

--00000000000015ffbb06535a6257--

--===============2688111694073947900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2688111694073947900==--
