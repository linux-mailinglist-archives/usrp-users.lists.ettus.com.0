Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C8D298F3
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2019 15:30:14 +0200 (CEST)
Received: from [::1] (port=52806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hUAGt-000439-2j; Fri, 24 May 2019 09:30:07 -0400
Received: from mail-ua1-f43.google.com ([209.85.222.43]:33027)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hUAGM-00031o-2s
 for usrp-users@lists.ettus.com; Fri, 24 May 2019 09:30:04 -0400
Received: by mail-ua1-f43.google.com with SMTP id 49so3526416uas.0
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 06:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Vcaav95k7dPu+Od/2ng0moNxDfV0iFtBHoBAsg2jWlk=;
 b=bFrGGg6G8BMq+kc178WsN6Kb0pW9tDFPlQFFN4db167ZAMmvngFc/o0XeOt7hVSPnU
 zT4bVwfurGRsDT59pEQjiI4CQvWx4tdAZ/E5NjDvDuhir/87Dh/huQhGtOuG5f3eyxGm
 zm6+OqqrVLSniy++bLXrIKLXey0wor1BwzFCvRkMMa9aKl/OqJxtyhcg6k9ZM+61PFkD
 hVZU3TY7obtYcixt9rzWeL375iGBpaUR1fiw0mBOs25FVTOIB3pIpFTF5+pq6UC1WIOK
 Y9uo6iaeM2Mct7N/wcHA8xrCJNvTWnYj+0pOhXjRs+sPkAD3ET+vhVzLGoJ4u9l41i/a
 XIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Vcaav95k7dPu+Od/2ng0moNxDfV0iFtBHoBAsg2jWlk=;
 b=bF15zduL4TrBitwA3uITNVscUiJRQznRilltsz/XnQ6zx3ZyGsAPwTMSbtUjGpfVYF
 JN6Sy3neoHnknpYTE5jI15PGERZTDYTIvq8wdJS4bQTtAG6BzxfhOF8lBfWxHeOfxm86
 LLWCFs5uIUThf9BDjn8QEUmbamQZqlG+qCNQaFZymDLPCF0uNxvlXoi2DCZCIp3GWxTT
 iEaamCPXIrY3LkDXdbzLePV1Z3nR4sgTziOH/SMqd1noPwRPyzEc0Z1RsbvuUPiD9K3T
 I80FmYzBP1hloTqKlU44DZHQsJjlO90XpkOMj37Mc2Rg3PdoqrV+s83UIMBwuPbwWDs2
 /AiA==
X-Gm-Message-State: APjAAAUNKigyWwchXpbdlKf6sQPJ3zQ34P1i7svCAoc/+Vufymbpw+AC
 xljgOiHPn53HbyC1K2eQT81tqvYd06M=
X-Google-Smtp-Source: APXvYqy/9B3lw3xp4VV5YyI5yCTuYDr7HCgh9HwU28hrSZn3bYtq2H8rYvowXBZJXVwp65qxwLZ8UA==
X-Received: by 2002:ab0:4e:: with SMTP id 72mr18565359uai.51.1558704533133;
 Fri, 24 May 2019 06:28:53 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id g135sm996869vkd.51.2019.05.24.06.28.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 06:28:52 -0700 (PDT)
Message-ID: <5CE7F193.2040202@gmail.com>
Date: Fri, 24 May 2019 09:28:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1558696742.740476.25076.50204@mail.rambler.ru>
In-Reply-To: <1558696742.740476.25076.50204@mail.rambler.ru>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] TwinRX min frequency
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============2240349502022681491=="
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
--===============2240349502022681491==
Content-Type: multipart/alternative;
 boundary="------------060401090109030703040208"

This is a multi-part message in MIME format.
--------------060401090109030703040208
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/24/2019 07:19 AM, Андрей 1 via USRP-users wrote:
> Hello
>
> In documatation indicates that minimum frequency of receiver TwinRX is 
> 10MHz but when I tune in 49 MHz there is no signal.
>
> What exactly minimum tunable frequncy og TwinRX ?
> If it means that min = frequency - band / 2 ?
> How in this case will tune in to a frequency below 5MHz ?
>
> Thank you
You're going to need to provide more details of *how* you're tuning, and 
what you mean by "no signal".

The TwinRx is capable to tuning down to 10MHz.


>
>
> .
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------060401090109030703040208
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/24/2019 07:19 AM, Андрей 1 via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1558696742.740476.25076.50204@mail.rambler.ru"
      type="cite">
      <div>Hello</div>
      <div><br data-mce-bogus="1">
      </div>
      <div>In documatation indicates that minimum frequency of receiver
        TwinRX is 10MHz but when I tune in 49 MHz there is no signal.</div>
      <div><br data-mce-bogus="1">
      </div>
      <div>What exactly minimum tunable frequncy og TwinRX ?</div>
      <div>If it means that min = frequency - band / 2 ?</div>
      <div>How in this case will tune in to a frequency below 5MHz ?</div>
      <div><br data-mce-bogus="1">
      </div>
      <div>Thank you</div>
    </blockquote>
    You're going to need to provide more details of *how* you're tuning,
    and what you mean by "no signal".<br>
    <br>
    The TwinRx is capable to tuning down to 10MHz.<br>
    <br>
    <br>
    <blockquote cite="mid:1558696742.740476.25076.50204@mail.rambler.ru"
      type="cite">
      <div><br>
      </div>
      <div><br>
      </div>
      <div>.</div>
      <div><br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------060401090109030703040208--


--===============2240349502022681491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2240349502022681491==--

