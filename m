Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DEFBBA8B
	for <lists+usrp-users@lfdr.de>; Mon, 23 Sep 2019 19:30:03 +0200 (CEST)
Received: from [::1] (port=56092 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCS9s-0003oq-Oq; Mon, 23 Sep 2019 13:29:56 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:43996)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iCS9o-0003h1-HT
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 13:29:52 -0400
Received: by mail-qk1-f176.google.com with SMTP id h126so16247908qke.10
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 10:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=WZK2oD6h5KLMbeWy0Tgn5Hbimlvko4tn9hdWJ74RG9I=;
 b=M8Zo231bXurQssKoO7nk1hbJ0w6eoivMoC+H17TyJ8BfNiK1cpJw0wZEazp+0YB3zp
 prn7WPxPCQ1ULrlUD0ExGR1semJIo5SJRUhn3wcGB22G3qBZZhg6Khax+qYKXbgBcdYh
 2irAJ7cEP8I8xpmJlQkpCTy2fKIalCfvohswRhbyU5VaUj2TCPX5NRbdDzgzA7xkvoeG
 7uqNYiw0Ib6utP8P3l50N74AC3u8FcnLklhI77O5dOt1sdiGzQAbdP8mhQkGpazSKm2p
 Yx4V7WPFCzwr4+p4EvbiPEucNIDy/ZfqJJeSg2sJAn3qvDISDdZBiBBumFmTFWa7MwdQ
 lt0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=WZK2oD6h5KLMbeWy0Tgn5Hbimlvko4tn9hdWJ74RG9I=;
 b=t+friKtWer77QzI5KWsAm88hMOzUJLfGmfDSahqUXbNJYGo/+Jdq8JpvDpLFWsPjxP
 BpyEwy+CX0BOQ9v/eHXnPoGONaS9RMKCP1i1qUySiMyOCsW42NbJFczncQjyJjVI7Qqf
 UyBcTFXAEfCTMIBfaRKwnCJWKNFiuUNupMnZ/XMsvF/Dfl8lK72X5IUy7RxwBJfNZ9O1
 n8JDLsa/7+WYG91MnISsMX1S26/ffv/y2zf/NW59HTTNo98c8rvkwIxJZ83XPL9ZXaOq
 sMDFDRNJBghcTzN52VDkR0UnBIabgpbIWtW6WK/hbAuA3JSAtZT5raPmRaYisWpZL7RG
 1Jyw==
X-Gm-Message-State: APjAAAUg5mf3pdos0nVeDiTKWlgLfAS2oxOuzk9k57BCXo432S1RXNHp
 3uOILnKJgLtnlHyUc0Lczt6KtxNB
X-Google-Smtp-Source: APXvYqw5njxWnMF8iXJaOkbq3CaF4w10pbZa4Af2WgfpWiNGnKtzsxzHKuEIbjfA319lOJYhlXfUCg==
X-Received: by 2002:a05:620a:12b5:: with SMTP id
 x21mr986904qki.462.1569259751922; 
 Mon, 23 Sep 2019 10:29:11 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id u27sm7370130qta.90.2019.09.23.10.29.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 10:29:11 -0700 (PDT)
Message-ID: <5D8900E6.20707@gmail.com>
Date: Mon, 23 Sep 2019 13:29:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1569256729341.35718@av.it.pt>
In-Reply-To: <1569256729341.35718@av.it.pt>
Subject: Re: [USRP-users] rx_to_file
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
Content-Type: multipart/mixed; boundary="===============0776377359246575285=="
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
--===============0776377359246575285==
Content-Type: multipart/alternative;
 boundary="------------020908000208050802000908"

This is a multi-part message in MIME format.
--------------020908000208050802000908
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/23/2019 12:38 PM, Diogo Botelho Ribeiro Marinho via USRP-users wrote:
>
> Hello,
>
>
> I used the "rx_to_file " executable file test to receive samples from 
> USR N310 and the file with rx camples as the following format:
>
>
>
> 0000 0000 0000 0000 8600 c038 5900 00b8
> 8600 c038 5900 00b8 5900 8038 8600 c0b8
> 5900 8038 0000 0000 5900 8038 0000 0000
> 5900 8038 5900 0038 5900 8038 5900 0038
> 5900 0038 0000 0000 5900 0038 5900 00b8
> 5900 00b8 0000 0000 0000 0000 5900 00b8
> 5900 8038 5900 00b8 5900 0038 5900 00b8
> 5900 0038 5900 00b8 0000 0000 5900 00b8
> 5900 0038 5900 80b8 0000 0000 5900 00b8
> 5900 0038 0000 0000 5900 8038 5900 80b8
> 5900 0038 0000 0000 5900 0038 5900 00b8
>
> .....
>
> ...
>
>
>
>
> Can you tell me how this I/Q samples are organized? by channel ?
>
> How can i represent this?
>
>
> Thanks in advanced
>
> Diogo Marinho
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
You'll need to tell us what parameters you passed to the application.



--------------020908000208050802000908
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/23/2019 12:38 PM, Diogo Botelho
      Ribeiro Marinho via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1569256729341.35718@av.it.pt" type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none"><!--P{margin-top:0;margin-bottom:0;} --></style>
      <p>Hello,</p>
      <p><br>
      </p>
      <p>I used the "rx_to_file " executable file test to receive
        samples from USR N310 and the file with rx camples as the
        following format:</p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p>0000 0000 0000 0000 8600 c038 5900 00b8<br>
        8600 c038 5900 00b8 5900 8038 8600 c0b8<br>
        5900 8038 0000 0000 5900 8038 0000 0000<br>
        5900 8038 5900 0038 5900 8038 5900 0038<br>
        5900 0038 0000 0000 5900 0038 5900 00b8<br>
        5900 00b8 0000 0000 0000 0000 5900 00b8<br>
        5900 8038 5900 00b8 5900 0038 5900 00b8<br>
        5900 0038 5900 00b8 0000 0000 5900 00b8<br>
        5900 0038 5900 80b8 0000 0000 5900 00b8<br>
        5900 0038 0000 0000 5900 8038 5900 80b8<br>
        5900 0038 0000 0000 5900 0038 5900 00b8<br>
      </p>
      <p>.....</p>
      <p>...</p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p>Can you tell me how this I/Q samples are organized? by channel
        ? </p>
      <p>How can i represent this?</p>
      <p><br>
      </p>
      <p>Thanks in advanced</p>
      <p>Diogo Marinho <br>
      </p>
      <p><br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    You'll need to tell us what parameters you passed to the
    application.<br>
    <br>
    <br>
  </body>
</html>

--------------020908000208050802000908--


--===============0776377359246575285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0776377359246575285==--

