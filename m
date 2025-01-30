Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE137A230ED
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 16:19:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6C47385E6A
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2025 10:19:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738250352; bh=ut9ofgIiL+gSeYWkE72ibexHp+1zbUNTpXue9/d5o4I=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XdkLqoWdzLHUrg+Xrr4yYCaj6+taoJEEPXpfFrGLh1A31lGZHlitCf5PnyE4ciMr4
	 cj7rrCoTCIiNzK2TWQUWP2FYeIMnnseO/6mLmsPiuyQ8k77jdQbR9WLF/RAQ3Tb7Og
	 cJCxyPr/38q/RglSuB1DZzgFFHzvAiKCS8XU9jC9DnHIFAatclyev7yM+oYpklTFaf
	 kgr4iU29yEJWrAqDplJuC1RijP1CQxhDf7MbO2kNj3B1/iF5BRGH4ahrzOUcP1/JNb
	 xw9qXk/R758r5mKBkapypk0pUM+ikuvIJkl9i1W89WUo49i9QVUgrgg5JDTkeyGdk1
	 LXSOkLpRtjzMg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EAB2385E00
	for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2025 10:18:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738250307; bh=k1YwjbQp194kDHsq8XyyanIdIwSpQTCalUmkoyE9v3I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Hp8grmuKJNBBwBWuTmsm1uimjzHGmB7Rer8KkY/xbOGQxak5OaC8UuLm3/yyVmUtu
	 oKa6dZRXRbIozXuXwdkNHRMql+CjMVjeI2JgusRxSh78YTbcwjk8SrBAz4d1xtxPK1
	 SwWxr2esjZK7orxV3xwtUw04YQFhB67s6HM/NoKHsN216eLajh8IfiKQSM9vOA9k65
	 oZ3/XVUFhQgC4DKAGYjdZ4RAfQEXHQ/txjCSAos8DzUEusid8CgWEgJcV5xMAnNTV/
	 YHviFeawVFqNtZsuy+sv/K68QqIZXjZ09bNDEwizl/DMoUrlnI2gNw/O6VadXrmJgl
	 zWJ3roC7Ehwwg==
Date: Thu, 30 Jan 2025 15:18:27 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <f9tCu1L4OpqSQWZNRpYPu4A9ZArNKGBe1A7xujVic@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 347ca55c-db51-ae48-e7d9-be2441f0f68e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: BF47YR5AA7X7R6CHKSSFIWCFYGYAYK5I
X-Message-ID-Hash: BF47YR5AA7X7R6CHKSSFIWCFYGYAYK5I
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Image Flashing Problem: "Error: RuntimeError: Device reported an error during initialization."
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BF47YR5AA7X7R6CHKSSFIWCFYGYAYK5I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0516728858666520201=="

This is a multi-part message in MIME format.

--===============0516728858666520201==
Content-Type: multipart/alternative;
 boundary="b1_f9tCu1L4OpqSQWZNRpYPu4A9ZArNKGBe1A7xujVic"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_f9tCu1L4OpqSQWZNRpYPu4A9ZArNKGBe1A7xujVic
Content-Type: text/plain; charset=us-ascii

Hi  

I am having the same problem using UHD 4.7 on a USRP-2974.  Note I have also used the JTAG recovery method to be sure, this works fine.  

uhd_usrp_probe loads ok too. But when I use uhd_image_loader then there is a problem

 

```
uhd_image_loader --args="type=x300,addr=192.168.40.2" --fpga-path="x300_final.570080.bit"
```

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.7.0.HEAD-0-a5ed1872
```

```
Unit: USRP NI-2974 (31D28CA, 192.168.40.2)
```

```
FPGA Image: /mnt/spirent/posapp/share/posapp/bitfiles/x300_final.570080.bit
```

```
failed.
```

```
Error: RuntimeError: Device reported an error during initialization.


Below is the output from reading the MB eeprom:

Fetching current settings from EEPROM...
    EEPROM ["revision"] is "12"
    EEPROM ["revision_compat"] is "7"
    EEPROM ["product"] is "31131"
    EEPROM ["mac-addr0"] is "00:80:2f:30:7b:5d"
    EEPROM ["mac-addr1"] is "00:80:2f:30:7b:5e"
    EEPROM ["gateway"] is "192.168.10.1"
    EEPROM ["ip-addr0"] is "192.168.10.2"
    EEPROM ["subnet0"] is "255.255.255.0"
    EEPROM ["ip-addr1"] is "192.168.20.2"
    EEPROM ["subnet1"] is "255.255.255.0"
    EEPROM ["ip-addr2"] is "192.168.30.2"
    EEPROM ["subnet2"] is "255.255.255.0"
    EEPROM ["ip-addr3"] is "192.168.40.2"
    EEPROM ["subnet3"] is "255.255.255.0"
    EEPROM ["serial"] is "31D28CA"
    EEPROM ["name"] is "98AC10626140838F"

Done
```

--b1_f9tCu1L4OpqSQWZNRpYPu4A9ZArNKGBe1A7xujVic
Content-Type: text/html; charset=us-ascii

<p>Hi  </p><p>I am having the same problem using UHD 4.7 on a USRP-2974.  Note I have also used the JTAG recovery method to be sure, this works fine.  </p><p>uhd_usrp_probe loads ok too. But when I use uhd_image_loader then there is a problem</p><p> </p><pre><code>uhd_image_loader --args="type=x300,addr=192.168.40.2" --fpga-path="x300_final.570080.bit"</code></pre><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.7.0.HEAD-0-a5ed1872</code></pre><pre><code>Unit: USRP NI-2974 (31D28CA, 192.168.40.2)</code></pre><pre><code>FPGA Image: /mnt/spirent/posapp/share/posapp/bitfiles/x300_final.570080.bit</code></pre><pre><code>failed.</code></pre><pre><code>Error: RuntimeError: Device reported an error during initialization.


Below is the output from reading the MB eeprom:

Fetching current settings from EEPROM...
    EEPROM ["revision"] is "12"
    EEPROM ["revision_compat"] is "7"
    EEPROM ["product"] is "31131"
    EEPROM ["mac-addr0"] is "00:80:2f:30:7b:5d"
    EEPROM ["mac-addr1"] is "00:80:2f:30:7b:5e"
    EEPROM ["gateway"] is "192.168.10.1"
    EEPROM ["ip-addr0"] is "192.168.10.2"
    EEPROM ["subnet0"] is "255.255.255.0"
    EEPROM ["ip-addr1"] is "192.168.20.2"
    EEPROM ["subnet1"] is "255.255.255.0"
    EEPROM ["ip-addr2"] is "192.168.30.2"
    EEPROM ["subnet2"] is "255.255.255.0"
    EEPROM ["ip-addr3"] is "192.168.40.2"
    EEPROM ["subnet3"] is "255.255.255.0"
    EEPROM ["serial"] is "31D28CA"
    EEPROM ["name"] is "98AC10626140838F"

Done</code></pre>


--b1_f9tCu1L4OpqSQWZNRpYPu4A9ZArNKGBe1A7xujVic--

--===============0516728858666520201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0516728858666520201==--
