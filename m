Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1631FFFB6
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 03:35:19 +0200 (CEST)
Received: from [::1] (port=49856 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jm5w4-0002Uw-3w; Thu, 18 Jun 2020 21:35:16 -0400
Received: from mail-qv1-f45.google.com ([209.85.219.45]:37889)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jm5w0-0002Q8-LR
 for usrp-users@lists.ettus.com; Thu, 18 Jun 2020 21:35:12 -0400
Received: by mail-qv1-f45.google.com with SMTP id ec10so3751057qvb.5
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 18:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=LK2Pc5U2nKwWKDZzmu6/84nXITU8ye64A8Hfxq0mj9U=;
 b=rsOUYPgAnkvFY6Aha0ILMae3jT5K6XKCGeoCk+FOBlmAsdoo3gGITjVx+IP6cLgBx/
 LWbMlo50ba58fNOv3Kk7M13QRZQRhT8gMJNxHCSUcptdXupJF96zlmHUc6kDzAD15EKw
 DnXyFJVmSdMhElJ8eh45pyFd1Z74kS7++TzKvEld+9N4za7v+rTizLm3K8NChSLv/ByM
 XSeQkCY1Ty6ApejHaIf1+4k8Zp4Vj6aZHQUxjIrkH07yYRtityCzFgOwQ6RFgqy8oDDU
 Rl80ZYMRhffUahnaOBSFBJtpuPHWPoSEZ4y/LuEOGYM2jCx7Ap0SysAw+sN7avtrkFV3
 vXlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=LK2Pc5U2nKwWKDZzmu6/84nXITU8ye64A8Hfxq0mj9U=;
 b=YcP+hhGV8+xA5vtws9SiRBAu7Sho4bHbdedcg/fU8Py8d7wzJKSTEYxAoDtl4+QY75
 nGrspvetGygiBP0FX2hDnyswYg5wpnaGjtSMow7VZdvKzR0cIOfpI0RclQHolPEsPfQ2
 7QtVPFbMU96rk14cx+Q6PmaD2h2SH+tp1aC9bL8SKK/XoGEeQL6nFoTRaZ/ioisMJGg4
 exKt9JjwGxa3K7BGRu7btNQrMEbrq9O0n75g+NfCqy1rAHHsWg2F6hLXgtbOle8W+7uD
 zhCSnT8+Kaosik1AN0v340yjVgJsm0w0GwVU0hl7f1Yr8R9Ce/sv4HS9yHTSSl9Gf6oj
 YFWw==
X-Gm-Message-State: AOAM530TtW2aRLLZmTeUl8zmABwc0dNMwINBzHy3sCVNxYLRB8XyxaPf
 IUom172IvPRC2USC0bVTs5xxCkO5hXU=
X-Google-Smtp-Source: ABdhPJynpBXq5lwnMRJdjvE6wLkLsogR6a4k73l/wS4HyoZCNou/u5K9cqKig923H7fUQOYyXdzKlw==
X-Received: by 2002:a05:6214:4af:: with SMTP id
 w15mr6583282qvz.11.1592530471879; 
 Thu, 18 Jun 2020 18:34:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id i21sm3523075qke.9.2020.06.18.18.34.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 18:34:31 -0700 (PDT)
Message-ID: <5EEC1626.50509@gmail.com>
Date: Thu, 18 Jun 2020 21:34:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Colby Boyer <colbyboyer@genxcomminc.com>
CC: usrp-users@lists.ettus.com
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
 <5EEB7DDA.2060403@gmail.com>
 <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
 <5EEBEB8D.9060408@gmail.com>
 <CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com>
In-Reply-To: <CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com>
Subject: Re: [USRP-users] SW control of DB TX/RX DSA on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3265560370936446293=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============3265560370936446293==
Content-Type: multipart/alternative;
 boundary="------------000708070109020505090004"

This is a multi-part message in MIME format.
--------------000708070109020505090004
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/18/2020 07:57 PM, Colby Boyer wrote:
> Thank you Marcus.
>
> On Thu, Jun 18, 2020 at 5:32 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/18/2020 06:28 PM, Colby Boyer wrote:
>     > Hi Marcus,
>     >
>     > Thank you for your response and pointing me in the right direction.
>     >
>     > Yes, I see that flow now after tracing through UHD to a poke32
>     > interface for twiddling the bits. Before I was mostly looking at
>     the
>     > Verilog FPGA code and how the registers were being mapped was
>     not that
>     > clear. It looks like the ATR idle register is being repurposed to
>     > control the TX and RX DSAs.
>     >
>     > It seems that the DSA command is put out over the wire via the CHDR
>     > interface with the following path for the N310. Host -> 10 GigE ->
>     > N310 10GigE Switch -> RFNoC -> radio core. It does not interact
>     with
>     > MPM running on Linux, is that correct?
>     >
>     > Looking at the gain control for the AD9371, this looks to be
>     > translated to an RPC call and sent to MPM that calls the mykonos
>     > API/SPI transaction. Does that sound about correct?
>     >
>     > Thanks
>     > Colby
>     >
>     It was my impression that in an MPM-based system, ALL the
>     control-traffic goes through MPM.   I could be wrong, as I haven't
>     studied that code
>        extensively.
>
>     I'll see if I can get anyone from R&D to comment.
>
>
>
According to my query into Ettus R&D, ALL of the control traffic, 
INCLUDING gain settings go through MPM on an MPM-based system.



--------------000708070109020505090004
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/18/2020 07:57 PM, Colby Boyer
      wrote:<br>
    </div>
    <blockquote
cite="mid:CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Thank you Marcus. <br>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Jun 18, 2020 at 5:32
          PM Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          06/18/2020 06:28 PM, Colby Boyer wrote:<br>
          &gt; Hi Marcus,<br>
          &gt;<br>
          &gt; Thank you for your response and pointing me in the right
          direction.<br>
          &gt;<br>
          &gt; Yes, I see that flow now after tracing through UHD to a
          poke32 <br>
          &gt; interface for twiddling the bits. Before I was mostly
          looking at the <br>
          &gt; Verilog FPGA code and how the registers were being mapped
          was not that <br>
          &gt; clear. It looks like the ATR idle register is being
          repurposed to <br>
          &gt; control the TX and RX DSAs.<br>
          &gt;<br>
          &gt; It seems that the DSA command is put out over the wire
          via the CHDR <br>
          &gt; interface with the following path for the N310. Host
          -&gt; 10 GigE -&gt; <br>
          &gt; N310 10GigE Switch -&gt; RFNoC -&gt; radio core. It does
          not interact with <br>
          &gt; MPM running on Linux, is that correct?<br>
          &gt;<br>
          &gt; Looking at the gain control for the AD9371, this looks to
          be <br>
          &gt; translated to an RPC call and sent to MPM that calls the
          mykonos <br>
          &gt; API/SPI transaction. Does that sound about correct?<br>
          &gt;<br>
          &gt; Thanks<br>
          &gt; Colby<br>
          &gt;<br>
          It was my impression that in an MPM-based system, ALL the <br>
          control-traffic goes through MPM.   I could be wrong, as I
          haven't <br>
          studied that code<br>
             extensively.<br>
          <br>
          I'll see if I can get anyone from R&amp;D to comment.<br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    According to my query into Ettus R&amp;D, ALL of the control
    traffic, INCLUDING gain settings go through MPM on an MPM-based
    system.<br>
    <br>
    <br>
  </body>
</html>

--------------000708070109020505090004--


--===============3265560370936446293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3265560370936446293==--

