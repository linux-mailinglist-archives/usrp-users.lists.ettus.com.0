Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A16745D8E
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 15:37:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4428383E78
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 09:37:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688391424; bh=xPbM/8iQd2UyyCvHhyqj4mozhr1DRVGLbrePyf4TnLc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=h7LsArmZl+r5r+QkFRj2Stf8AGdsNueQYwXIfhbIYCzATN7sTJMUFG9JL+Gryhtx2
	 +CL4gkCOrRZM2OP1ciD4f2LwGXDjGKcr9H2w0ex22djeyi7P1NZEIsKohZQ/NtarUL
	 qnqVyEnGaYjBVNbqL/W/zKAeW3Dmvm3D/3NjxbTpHkTOXHM/sJuY+bvRzHXcKtGk3Q
	 KuoCIsC1uEzyTlU/HQdgg3rTpA8W2vsiBWvwoNBqgopFBkq7pT60kKTY42bxF9U+cU
	 qMA8w3UtLed1cKCc+CI2Odh/1VqDkJBQHgbepJxe4fAYmeSOw4bXdyNlr/QMBhpeEs
	 1Ng+4HxiSnAfQ==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 269763808C4
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 09:36:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZzfhwYVB";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5701eaf0d04so50865977b3.2
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 06:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688391401; x=1690983401;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LIuAWhq6NKRvsLk22usB1BtfUM7EC+UxgSH+wUloKYQ=;
        b=ZzfhwYVBbVb+Kf0YiQDJ2NXBuzMKkmIPKyhPK9jIo+cIoHPVo2q5BBtInUJ0dL8Mk6
         1e1+ew+ZQVzCKXdDLSGqnUINUbtbbKbMncdBjz8utTkmnwQXHDHuX1mETmU3z7jmmSdO
         rJ5ZK+J6GqAD0MzIs+cESksEN305TcIoA3iXKawjtt7Pjl0cjJQBjd/U7LgidIpgTFvJ
         alOoG9d7bEJ009sYDGVyk683B9Uocpheg77nsbx1UAgHekzaICmMLB4zGAJFCmKlMFZE
         QAdlqXl7B6hoaEGjGXSluTgbvvTK74fPo3ruZg+/yqyZBPx8Ru1V055sIYyuK6aI9QQ8
         30FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688391401; x=1690983401;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LIuAWhq6NKRvsLk22usB1BtfUM7EC+UxgSH+wUloKYQ=;
        b=XyZlu7xM9WBi+CaS4VczmOPFsJLgaXSdFAZga6lQcLdsnT4WKloEpJ2Xz63q9qe8Vo
         VyLsg3vlE9FOr7JAggMEaeuZdloMUVzjPIuRP+7ypSVCSRXsz5o6G8oGH8tB9D37xWld
         jfaQjlCGg3epKQ/0J/MdrBF950gwr2iOX7H4Np0O/Ki8Jnq04XCx/Dpd+SBZ0qhZHCrf
         BlDFtqR65j8B9GD/Zq91kJjuasKIJsSaeqVJS19rNjGGff1CwjP/xSbCBRAQkEU1r1Xf
         0JZhxRSPtJuFzA4nfL5oIONi1en++q0ainEzO9Q4U0rnOqmDTxrh0fJzQ0O60HKLpeCF
         xMdw==
X-Gm-Message-State: ABy/qLaLlioXbbYRTUFJvDrWUF6WxPmKQhUY7+b8jIvU/1EalbMY99PB
	kUjAo6J2eSHpDNnClRvSvhbS5vFVw/g=
X-Google-Smtp-Source: APBJJlG+Jd8CWMBfqQo8+ed+NXtEyFUaYRJecnmc4B5dDfRBi5T0PSKhgJYdr5Zw2Z0+CNViBjYvKg==
X-Received: by 2002:a0d:eb48:0:b0:562:1850:bbf0 with SMTP id u69-20020a0deb48000000b005621850bbf0mr8881337ywe.21.1688391401344;
        Mon, 03 Jul 2023 06:36:41 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f7-20020a05622a1a0700b004008286c1casm9035831qtb.88.2023.07.03.06.36.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 06:36:41 -0700 (PDT)
Message-ID: <869a1d2f-85a0-754d-b84c-2b391967d0b2@gmail.com>
Date: Mon, 3 Jul 2023 09:36:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM@lists.ettus.com>
Message-ID-Hash: SOF5MSQALSFZGPI56NLIZ6GGE3AOWHBR
X-Message-ID-Hash: SOF5MSQALSFZGPI56NLIZ6GGE3AOWHBR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SOF5MSQALSFZGPI56NLIZ6GGE3AOWHBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5527254895315879648=="

This is a multi-part message in MIME format.
--===============5527254895315879648==
Content-Type: multipart/alternative;
 boundary="------------KKW9zXnm0fpat50TgcTjDdkM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------KKW9zXnm0fpat50TgcTjDdkM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/07/2023 07:37, jnunez@cud.uvigo.es wrote:
>
> Sorry, here is the diagram.
>
> Diagram
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
No diagram in this one, either.


--------------KKW9zXnm0fpat50TgcTjDdkM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 03/07/2023 07:37,
      <a class="moz-txt-link-abbreviated" href="mailto:jnunez@cud.uvigo.es">jnunez@cud.uvigo.es</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:M4ebPUdPvCWqA1lWcYJP8o9SmdZJ5HNFPSZd91nMLM@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Sorry, here is the diagram.</p>
      <p><img
src="https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing"
          alt="" title="" draggable="true" moz-do-not-send="true"
          contenteditable="false"><img
src="https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing"
          alt="Diagram" title="" draggable="true"
          class="ProseMirror-selectednode" moz-do-not-send="true"
          contenteditable="false"><br>
      </p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    No diagram in this one, either.<br>
    <br>
    <br>
  </body>
</html>

--------------KKW9zXnm0fpat50TgcTjDdkM--

--===============5527254895315879648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5527254895315879648==--
