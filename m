Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB2769B267
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 19:35:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40AC43845AF
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 13:35:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676658940; bh=rB1cLzrNZ/hiHo8UXgw04pFIN0riH6z7Xocg3E+OrC4=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=m5JKbWzwmB6mgUwKDc63oMv2ggMXoeqwSltVXGvMzuRCS7xCvsZzDzHsb+T4wgN0P
	 D1S8d/AKmr6OFUcuzNcbrjpe9T+a27OrSb5IABdja9jWpj7IYDLV9P8zxBYKjgnwrV
	 2cK2WIAlV3LI+QeeFURzQ+L0du7dQgpgxnISAVDJMxhQTjrzOH47oGvsHtuhQPUq/M
	 GbgLBIj/iFKQovfB6GgCyZtloWupru0XUjlovKORKpyb91BXfAx8vnPY7KgKMhjv+o
	 edxsXCTMA1gASbDlU/pqEGbFmRfMWXspcNvk9SnlBy5W+I0W5/50C4f1pLVqlnObV1
	 C1YLw9ZaZ/ksQ==
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EC0B3845CF
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 13:34:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="Gc0BHGt6";
	dkim-atps=neutral
Received: by mail-oi1-f173.google.com with SMTP id bk11so2021216oib.13
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 10:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hgCViFL+BHt6vdboQfL8uHu4rVLCcoAIxUbPYnxOomo=;
        b=Gc0BHGt6CpvXespqwpxbtzTNvaVNss6a+1Mxtlsi83cmZqyjtFsbpVGAUhjnUwKbjQ
         lf93VZTvTZrI7Z+pHuHvdEhSiwJ0ckJig7BgXXICrQ0L88ks4AgcJH5wXqvsIJWZeUCh
         K4W1tHl0dtffMesTfjTIbG6hi+FA2WgeQpL35DvL6canhDHO+/MIPdZd/7t8lJejGZHj
         GP0OJJFNYna8HQK6+sbuuY90pdbL7XrGblKGpTP8G4L66uN6lwIYXeKzEUv41dLJV6Ng
         JwhNvM9c+SYbtMOqsYFuf64oCDldOxvZdvfY6X/I6EquIJRyVQwFD6B5JNG8bfQICK9k
         HQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hgCViFL+BHt6vdboQfL8uHu4rVLCcoAIxUbPYnxOomo=;
        b=0giTM/VvmhMnz4x3Z9y5SNigvXui65kS9drJGXsBVdigzoQmbk0gwz2Edh4q+t/IQV
         AZvdiq+9KkpXIyBb2Vm8YvpmA0twV6GEjrTWZovBSs8g1TuI1JIqXCCsLWJiO52XosY2
         Em+Vtv8514NmJnhlX9ulN9/L2RPC1gOpJuqvRJNqnJhC/oxKcOmZzWC3zc6U0VLPeORU
         exTwPbfYbFLjptiBtajgjO1Cu4ihsKLqFZcBCHXySiuByP29DJ5Zqc2NXfMPo5UIEXQ+
         GEVKBc/R4zvKrKMvOCqSUBWlOKb7x79MXjciQW0pIvVZsOpl78wPXPQ9vaHuTVt5naYb
         MLLw==
X-Gm-Message-State: AO0yUKUyuv4dm6tcli/9FhCwNk+RcHQXFYi0nxwTzcFjj9yPkXBkG7qS
	5RoYfQ+WhDtCTGffboH7DstSvdG35NyD+CeW3OXWr5ZOghA+Bw==
X-Google-Smtp-Source: AK7set/ez8ZcMdFUxweyOW/k6ahxuy94d637yZsXw9qUab934XBKRBgy7EgTUnS+a6p/CNfymODQy28bIOOk0N7SSnQ=
X-Received: by 2002:a05:6808:1156:b0:378:80a9:7b91 with SMTP id
 u22-20020a056808115600b0037880a97b91mr508754oiu.20.1676658883373; Fri, 17 Feb
 2023 10:34:43 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 17 Feb 2023 13:34:32 -0500
Message-ID: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PI5LWTBCYUN34V7YEKC6X7TRSFGWB5EU
X-Message-ID-Hash: PI5LWTBCYUN34V7YEKC6X7TRSFGWB5EU
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PI5LWTBCYUN34V7YEKC6X7TRSFGWB5EU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============6671893702115943279=="

--===============6671893702115943279==
Content-Type: multipart/alternative; boundary="00000000000027489205f4e99134"

--00000000000027489205f4e99134
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have a simple question about the continuous stream. As you all know, USRP
RX lights indicate whether it's receiving samples or not. On continuous
streaming, these lights are turned on if the recv function is called from
the host computer(stay on until the end of recv function call). In theory,
the continuous streaming mode should receive and buffer these samples. So,
shouldn't the lights be on until the continuous streaming stop(not until
the end of recv function call)?

If this is how it should be, then my understanding of continuous stream is
wrong. If I don't call recv function, doesn't USRP receive samples and
buffer them(on continuous streaming mode)?


Thanks,
A.

--00000000000027489205f4e99134
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I have a simple ques=
tion about the continuous stream. As you all know, USRP RX lights indicate =
whether it&#39;s receiving samples or not. On continuous streaming, these l=
ights are turned on if the recv function is called from the host computer(s=
tay on until the end of recv function call). In theory, the continuous stre=
aming mode should receive and buffer these samples. So, shouldn&#39;t the l=
ights be on until the continuous streaming stop(not until the end of recv f=
unction call)? <br></div><div><br></div><div>If this is how it should be, t=
hen my understanding of continuous stream is wrong. If I don&#39;t call rec=
v function, doesn&#39;t USRP receive samples and buffer them(on continuous =
streaming mode)? <br></div><div><br></div><div><br></div><div>Thanks,</div>=
<div>A.<br></div></div>

--00000000000027489205f4e99134--

--===============6671893702115943279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6671893702115943279==--
