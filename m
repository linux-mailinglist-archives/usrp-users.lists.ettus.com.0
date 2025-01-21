Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C940A17F62
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 15:05:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D9DB383B89
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 09:05:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737468341; bh=btyeIrZ1+Ii7E/NHuIDksYaBxZN5Yov1j05gV5MVfFM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nsCkn/oxU0oA3WtSAgtI+Pz9Izt0FbGI7f4sYpigUS9Dwws6q5DefF/GuHjK0cA3a
	 Xxs7stmpohxO4+8R/PJ+SMP5JYsUnITNcAODhh4bH55XTFnd4bHEnk5y9ZKqYUM74Z
	 6ctACIJmlW8Hz1jXOQ7fTt0TuJWzSxj8qkrAnhC38MX72npiAYlr/fr7CXBA3lZnEA
	 FpUgkpCd0/+/L81yhAizwjaGzRG/zmepZx/MMz/01ppBKccb13iOInK1byFPumBGKL
	 dsCrOFO3vQG5Q+hnf38QORI8Pp+CEdRldhLNy5FfZ5a+IGMCa0CC3OkFHMR+YpHXHe
	 noTnIjw1aMZcw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id EC1C1385A2B
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 09:05:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OcEYOF0r";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7b6ed9ed5b9so199368985a.2
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 06:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737468314; x=1738073114; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KHXp41FLpiZ+ONsuFXgzP+nb+AeHImvD9MYYwbJjy0U=;
        b=OcEYOF0rXsteTZFPUzfQahlNxObESw5Tk5TJ1be1dE0fIyiwY8NNiAXxxlSl9Ua592
         Sb75kQmaAnsMuelEnD8twwwWkbAl71VabDvAnAla0oM/TBJ0g4pfKgW2RXJf1e+tH9RC
         shNBEMiU813vlPNcm9hEd5b9QwXakm08WnYIPhRW5eaYzG95amaL1haRYn4KA9euAkjE
         opa9ynag1yMhnGhyELUqchY8JNCqLXDNAh9fsVm2x5pdSL1knh/Z3fQYSyriUgw0sffj
         06gGzrHNhI2a0r3Kx5Lo2dTttp8gT34tqUIkhtSxQNVAWv9LY5WMh8vJ1XpM31VdAFBT
         lISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737468314; x=1738073114;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KHXp41FLpiZ+ONsuFXgzP+nb+AeHImvD9MYYwbJjy0U=;
        b=eWtPfGhZ84O2+E7fYeYIESe+W02kCYV+TNVjSdMG5m+JtnrXCk8kzPDQ9KHu2gdlf/
         7cP5hxbIWOqz0FEUCsEksLh6bmEPYVQEcIHI5QoX+UHTmhHQPEnOJ8elLnHo0lLYkYHu
         Z8i5wA4KgKqZt2YM6e69gXl7LSlX9cjxs8GNeJRDL/3hdQemxu6uwyFSpK8mCmhuRioe
         pX/pY3nwo5DEPu6q+801sWEM0fvYpk+6pliR9NfzXRew/KA4CFwA6eFaq+GCNXuQxrsN
         ONDCcanGV58aicuyeQJSu1nGFnYxOnzei8HiDPKsyRAd/JfxO42OPOHWTljGGCxg7XpJ
         M4Sw==
X-Gm-Message-State: AOJu0YwrXRQCF/ZJOhc5APnzx6do7QrbtvQYviV1aLM/7aPN+kDSovsl
	t9Zphrm4ooKthYVXWT6AoWRdIaA8bLHIFJXAjfyWMFGvtjyYxYWv35MFXg==
X-Gm-Gg: ASbGncsI0s2rQFzUEEzIAjvZ0+GuqgZ+SJDJYj7N5lH0ohezisynE7Voa3J676+Dp6v
	eyiR0WVeDfBIWlGB4+QLZysFKoJdLEOyhs14gXvnBJqKE8yPqj6QNCP/0aX4Vx6sdW7AMjgLUCs
	nNC9SOMDPSIOR/1NpT6VigK8P/uNjHc99Q/rQH2FjFTGXQAfE/VSKHfBkmawAubs5pQf+uNSOn2
	jaFGubZoMg4mH3V7EgQaeb+xM+gnyLzOdgNTnGAiLU2vzOw3az1dgu9vbd17ngKZ4uswulNfR6Y
	i/Rj
X-Google-Smtp-Source: AGHT+IHtqfJLQOWkrN281G/RseqhogK1XEjBfSO++q2wB9bOJbtDeT4UxOUybEG7WD/sAo7rVfsr6Q==
X-Received: by 2002:a05:620a:2988:b0:7b6:ebb8:14e8 with SMTP id af79cd13be357-7be6320cc0emr2437529785a.29.1737468313909;
        Tue, 21 Jan 2025 06:05:13 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be614d9971sm560010885a.79.2025.01.21.06.05.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 06:05:13 -0800 (PST)
Message-ID: <1d94cb12-0e70-4097-8b22-f31a2e6aba28@gmail.com>
Date: Tue, 21 Jan 2025 09:05:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fa011fa259474bd088c828de1e4da1a7@h-da.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fa011fa259474bd088c828de1e4da1a7@h-da.de>
Message-ID-Hash: H27FYHLGDUNEAEDAFXHLEFMOVY5ITYHY
X-Message-ID-Hash: H27FYHLGDUNEAEDAFXHLEFMOVY5ITYHY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SSL Handshake Failure When Downloading USRP Firmware Images
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H27FYHLGDUNEAEDAFXHLEFMOVY5ITYHY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4336042337236014933=="

This is a multi-part message in MIME format.
--===============4336042337236014933==
Content-Type: multipart/alternative;
 boundary="------------gj0Y06XuBiEm1CuLlpB5TA4w"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------gj0Y06XuBiEm1CuLlpB5TA4w
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/01/2025 09:02, Heinz, Dominik wrote:
> I'm encountering an SSL handshake failure while trying to download 
> firmware images for my SDR using the uhd_images_downloader tool.
>
> The error occurs both when using the tool and when accessing 
> https://files.ettus.com/binaries/images/ directly in a browser (any 
> browser, - firefox, chrome etc)
> Specifically, the SSL error that is shown in the browser is: 
> SSL_ERROR_NO_CYPHER_OVERLAP
>
> And the following is the error outputput of the uhd_images_downloader 
> tool.
>
> gnb@xgoss-host:~$ sudo uhd_images_downloader
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] Target b2xx_common_fw_default is up to date.
> [INFO] Target usrp2_usrp2_fw_default is up to date.
> [INFO] Target usrp2_usrp2_fpga_default is up to date.
> [INFO] Target usrp2_n200_fpga_default is up to date.
> [INFO] Target usrp2_n200_fw_default is up to date.
> [INFO] Target usrp2_n210_fpga_default is up to date.
> [INFO] Target usrp2_n210_fw_default is up to date.
> [INFO] Target usrp1_usrp1_fpga_default is up to date.
> [INFO] Target usrp1_b100_fpga_default is up to date.
> [INFO] Target usrp1_b100_fw_default is up to date.
> [INFO] Target octoclock_octoclock_fw_default is up to date.
> [INFO] Target usb_common_windrv_default is up to date.
> [ERROR] Downloader raised an unhandled exception: 
> HTTPSConnectionPool(host='files.ettus.com', port=443): Max retries 
> exceeded with url: 
> /binaries/cache/x4xx/uhd-c37b318/x4xx_x410_fpga_default-gc37b318.zip 
> (Caused by SSLError(SSLError(1, '[SSL: SSLV3_ALERT_HANDSHAKE_FAILURE] 
> sslv3 alert handshake failure (_ssl.c:1007)')))
> You can run this again with the '--verbose' flag to see more information.
> If the problem persists, please email the output to the usrp-users 
> mailing list.
The USRP team at NI is aware of the problem, and is working to fix it.


--------------gj0Y06XuBiEm1CuLlpB5TA4w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 21/01/2025 09:02, Heinz, Dominik
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:fa011fa259474bd088c828de1e4da1a7@h-da.de">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <div>
          <div>I'm encountering an SSL handshake failure while trying to
            download firmware images for my SDR using the
            uhd_images_downloader tool.</div>
          <div><br>
          </div>
          <div>The error occurs both when using the tool and when
            accessing <a
              href="https://files.ettus.com/binaries/images/"
              moz-do-not-send="true" class="moz-txt-link-freetext">
              https://files.ettus.com/binaries/images/</a> directly in a
            browser (any browser, - firefox, chrome etc)<br>
          </div>
        </div>
        <div>Specifically, the SSL error that is shown in the browser
          is: <span>SSL_ERROR_NO_CYPHER_OVERLAP</span><br>
        </div>
        <div><br>
        </div>
        <div>And the following is the error outputput of the
          uhd_images_downloader tool.<br>
        </div>
        <div><br>
          gnb@xgoss-host:~$ sudo uhd_images_downloader <br>
          [INFO] Using base URL: <a class="moz-txt-link-freetext" href="https://files.ettus.com/binaries/cache/">https://files.ettus.com/binaries/cache/</a><br>
          [INFO] Images destination: /usr/share/uhd/images<br>
          [INFO] Target b2xx_common_fw_default is up to date.<br>
          [INFO] Target usrp2_usrp2_fw_default is up to date.<br>
          [INFO] Target usrp2_usrp2_fpga_default is up to date.<br>
          [INFO] Target usrp2_n200_fpga_default is up to date.<br>
          [INFO] Target usrp2_n200_fw_default is up to date.<br>
          [INFO] Target usrp2_n210_fpga_default is up to date.<br>
          [INFO] Target usrp2_n210_fw_default is up to date.<br>
          [INFO] Target usrp1_usrp1_fpga_default is up to date.<br>
          [INFO] Target usrp1_b100_fpga_default is up to date.<br>
          [INFO] Target usrp1_b100_fw_default is up to date.<br>
          [INFO] Target octoclock_octoclock_fw_default is up to date.<br>
          [INFO] Target usb_common_windrv_default is up to date.<br>
          [ERROR] Downloader raised an unhandled exception:
          HTTPSConnectionPool(host='files.ettus.com', port=443): Max
          retries exceeded with url:
          /binaries/cache/x4xx/uhd-c37b318/x4xx_x410_fpga_default-gc37b318.zip
          (Caused by SSLError(SSLError(1, '[SSL:
          SSLV3_ALERT_HANDSHAKE_FAILURE] sslv3 alert handshake failure
          (_ssl.c:1007)')))<br>
          You can run this again with the '--verbose' flag to see more
          information.<br>
          If the problem persists, please email the output to the
          usrp-users mailing list.<br>
        </div>
      </div>
    </blockquote>
    The USRP team at NI is aware of the problem, and is working to fix
    it.<br>
    <br>
    <br>
  </body>
</html>

--------------gj0Y06XuBiEm1CuLlpB5TA4w--

--===============4336042337236014933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4336042337236014933==--
