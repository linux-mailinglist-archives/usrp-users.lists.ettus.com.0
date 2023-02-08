Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF4068F301
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 17:17:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B88F3383095
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 11:17:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675873056; bh=Q5Y0VcD6d6wvYBU5ZKuwtmDOo7cUHayvEEmN3W+1QFA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uwV39RmEoueNO3bttRD6FhXi4aXO7+U+6SyE7xKV0lqxiqiyWElMSNhYNdoVKmBEL
	 jqOyhBSlwJucUckomqUEiPnIviNQQODzPaCSf/5E7xuP6O1R8uPCdymct+xnvueP8K
	 2V6HX6335rYOLfWIZ0+QA2aiUmJDPneXFqQjXo0+R0PRvRFf+iCDiEK1FvOeMsa9jp
	 mu1o0ZLrF0mxesmj4VDzRp3keohSyh1IMgsFdCdL3Q25c2DnR1r/zI44TTOnIAEcGx
	 2jKsfLDEEG17ubM/DsmLlZfoOpeHeLsIlMqkDQmFDV/9NQlAdvsZ+RCCzZRrGaux2F
	 Gyzw3kt7A4maQ==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 572FF383C00
	for <usrp-users@lists.ettus.com>; Wed,  8 Feb 2023 11:16:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n8kIY6xK";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id h24so21356475qtr.0
        for <usrp-users@lists.ettus.com>; Wed, 08 Feb 2023 08:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MESbOLWDQicjIRlNr5USl96Ql6Ip2xj3eUpZME4CguA=;
        b=n8kIY6xKvGZbO9Vc2LgHej/UP2wbU/FDJxH9BGRmVt5fyRwjyTsJcVB+3HF8Ugypmz
         /qtw3K9IslF29Uu8olPKvrVZsLvcSL+I03E3Dq6JJzkWfWKO0w+QFVSAAdtiO9lgHBGe
         H79yLU35S4sV0Ec8QxDvCEpWNMTdC+qOzZeRfbUcCr+5ctXnuJyYUs2nBeugFdjPewOQ
         7HaTOkc8L9F7/osj29y9hukPK+bkF+JxBwxoAjR2zcTzLmxMobhIsWU5gYxTpD9RKOhK
         xY40kpuUW3TDZFpmhFqLMthn4+ApDsbaX5EElvQ6X3I+8Bjrq5jnjGaTQl0HAJqr1WHl
         K9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MESbOLWDQicjIRlNr5USl96Ql6Ip2xj3eUpZME4CguA=;
        b=rAwOoWiiY9bDC+nRLHumFAinafMvw93KBqq6Ef+Ex0NCcZVbpnzHmGKtixh7XQpFx3
         k9v63MvnNHCMstJbwUSJa348POrzj8NJNVJN74NTvUSqRZzQeDJPEc6zGeJiigfNXSBj
         AxYJOstTHOVZ+MQH3nSoxqK931ke5teVW3P+gq6cM3EXBg6QFz5iC9kGZmyLE49r7e45
         dfzkEadjIF/xwPjQf2X7nce5mPUkJz6BUF3fDApQpnLcqTKVyq2fluAH5/QN1GP3jJeA
         /QKKSvfGB2Omjf8u2mwWvnLGHYpDxSr5aEZGLJ9bSbDEO0bJy1hLsfRQR1xD7RP5mAU+
         sa+A==
X-Gm-Message-State: AO0yUKXXJsgy9Q0G7KS7SgXpXT6uvMB/H7sSeNX/Tr6Fasv0bwTDlDP/
	9b5ohkWVoZpTIwJdjwqEjl3W7im9ekI=
X-Google-Smtp-Source: AK7set+PvFr/gvr9g/bz0TniZSvS8SN3qrtLWE47XqqL9etJwG/fRh/oczpU+OsoKQBelkC8+6+D0w==
X-Received: by 2002:a05:622a:1106:b0:3b6:3a12:2bf9 with SMTP id e6-20020a05622a110600b003b63a122bf9mr14382758qty.2.1675872994557;
        Wed, 08 Feb 2023 08:16:34 -0800 (PST)
Received: from [192.168.2.162] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id u63-20020ae9d842000000b006fa22f0494bsm11869032qkf.117.2023.02.08.08.16.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 08:16:34 -0800 (PST)
Message-ID: <f47522d2-6021-71a8-1f2f-be791a30d09d@gmail.com>
Date: Wed, 8 Feb 2023 11:16:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CADhJKjdHYYzX_XoGRdnhW1pnff-E9QoQ+O_QuKePdyURh39EyA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CADhJKjdHYYzX_XoGRdnhW1pnff-E9QoQ+O_QuKePdyURh39EyA@mail.gmail.com>
Message-ID-Hash: 6MYZGXKEFR7KUWXRGHKN3LISZ4EIEIDS
X-Message-ID-Hash: 6MYZGXKEFR7KUWXRGHKN3LISZ4EIEIDS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MATLAB support for N320?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6MYZGXKEFR7KUWXRGHKN3LISZ4EIEIDS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2434512869170184667=="

This is a multi-part message in MIME format.
--===============2434512869170184667==
Content-Type: multipart/alternative;
 boundary="------------QANhmHLMZHnKHRGSruUEXGD0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QANhmHLMZHnKHRGSruUEXGD0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/02/2023 11:12, Melissa Lind wrote:
> I needed to do some 5G work with MATLAB's 5G Toolbox, and was=20
> wondering if someone could clarify:
>
> https://www.mathworks.com/hardware-support/usrp.html claims:
> N300 series from Ettus Research LLC
>
> https://www.mathworks.com/hardware-support/ni-usrp-radios.html claims:
> seems to have a picture of an N320
>
> There isn't any description of what is different between N320 support f=
or:
>
>   * NI USRP Radio Support from Wireless Testbench
>   * USRP Support from Communications Toolbox
>
> Thanks
> M
>
You might get more-detailed answers from Mathworks.=C2=A0=C2=A0 Ettus/NI =
aren't=20
directly involved in that support.



--------------QANhmHLMZHnKHRGSruUEXGD0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/02/2023 11:12, Melissa Lind
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADhJKjdHYYzX_XoGRdnhW1pnff-E9QoQ+O_QuKePdyURh39EyA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I needed to do some 5G work with MATLAB's 5G
        Toolbox, and was wondering if someone could clarify:
        <div><br>
        </div>
        <div><a
            href=3D"https://www.mathworks.com/hardware-support/usrp.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://www.mathworks.com/hardware-support/usrp.html</a>
          claims:</div>
        <div>N300 series from Ettus Research LLC<br>
        </div>
        <div><br>
        </div>
        <div><a
            href=3D"https://www.mathworks.com/hardware-support/ni-usrp-ra=
dios.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://www.mathworks.com/hardware-support/ni-usrp-radios.html</a>
          claims:<br>
        </div>
        <div>seems to have a picture of an N320</div>
        <div><br>
        </div>
        <div>There isn't any description of what is different between
          N320 support for:</div>
        <div>
          <ul>
            <li>NI USRP Radio Support from Wireless Testbench<br>
            </li>
            <li>USRP Support from Communications Toolbox<br>
            </li>
          </ul>
          <div>Thanks</div>
        </div>
        <div>M</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    You might get more-detailed answers from Mathworks.=C2=A0=C2=A0 Ettus=
/NI
    aren't directly involved in that support.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------QANhmHLMZHnKHRGSruUEXGD0--

--===============2434512869170184667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2434512869170184667==--
