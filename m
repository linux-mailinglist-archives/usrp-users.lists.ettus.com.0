Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E43B2412EA
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 00:20:27 +0200 (CEST)
Received: from [::1] (port=40570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5G9Y-00042S-C4; Mon, 10 Aug 2020 18:20:24 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:44659)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5G9V-0003ud-I1
 for usrp-users@lists.ettus.com; Mon, 10 Aug 2020 18:20:21 -0400
Received: by mail-qk1-f171.google.com with SMTP id j187so9935178qke.11
 for <usrp-users@lists.ettus.com>; Mon, 10 Aug 2020 15:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=S1deqwu87gdm615+ImeLaN4Vr1UB9xOvAGCh87nTeA8=;
 b=eZxIorvdVbr+82wMo/YJ1rTVPlhdTPOSPaE0oA3dHMYhVDZS/xgD9Xs5XenCsDnNQk
 ZxK/KRVW1PBeAmtIAxqnUqK/CY9o1uYY8QBXUM900kDl7ZsIOjbWui3kpj35eVykhaX3
 Yr/3sJJppHARw/4ZUWCzsax9CPuYjxnGFI7XB95jsfWugOZHuR0p1Bp19QouCOHID71C
 WY0crGVqEtx6COIWDqSu1+XGDtDnBLVmHn5vHxXOi/eH4cGV+7CjKLgZcr3r7Kf+UgLN
 V6UZZpxzE3CCuMxYV1jaLexds6ZSJlkAe9lGEQj2H0EgdU2o1nkLaaER2E0C4BEcYUqL
 Tn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=S1deqwu87gdm615+ImeLaN4Vr1UB9xOvAGCh87nTeA8=;
 b=Gt5N6CdhlcSTfykD4aCVkF8dGJnt/LincZnO3iClBX5iGHZoZ6EQApTxSKkAuYzCwJ
 DzrhvYQ2ko9TD1x4NTI/UVoDilZkKrSoeTw3hjPe/eYELbLzbUwceM5E1vqsnoFc/wz2
 Caq9dm6dI4hC7sh5fKkgc3aC+LSC4HQUskWuVBUPWuGnVfA8iH4ccSLxOZtQ0JPHNgHZ
 3MDINxacy9owO2yV4fU2j9Kr93RWo9xNTePSSg7Y67eLvxl0XBaU+rrbnO3wiljGADTH
 0Uo5QbshMSgLPR+qYuQYuKSeqvQITN3egFPtYttbddLqEwyRocql7TzIr/9JF5YBp0Nf
 MSpQ==
X-Gm-Message-State: AOAM531VAgFN0K7c4l5A2kX1SwPirjQJPWvh2o4+L9QqAn8jftlvEnY7
 N2I/NQZTroJWOtv7exQNHca/Gzbi0go=
X-Google-Smtp-Source: ABdhPJzHeQ/vXec/e1e6EwjSudEQj/Ofs1w3Nyh6C4PUMafuzYliyAi2Xx/jVSHWvlgobyzxT2a60A==
X-Received: by 2002:a37:6783:: with SMTP id
 b125mr27589971qkc.465.1597097980664; 
 Mon, 10 Aug 2020 15:19:40 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x57sm17049204qtc.61.2020.08.10.15.19.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Aug 2020 15:19:40 -0700 (PDT)
Message-ID: <5F31C7FB.4040406@gmail.com>
Date: Mon, 10 Aug 2020 18:19:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Chintan Patel <cpatel@vt.edu>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAOJfBDcLntSSPf1Ng8u4j8hvxOtfDApcnQk5tM+SP_zkb3reMA@mail.gmail.com>
 <5F31B7AD.6030000@gmail.com>
 <CAOJfBDc1D2mjsyi6ginZAyAxJ9HnHCH1QTXCRJxNW2WUCFySEA@mail.gmail.com>
In-Reply-To: <CAOJfBDc1D2mjsyi6ginZAyAxJ9HnHCH1QTXCRJxNW2WUCFySEA@mail.gmail.com>
Subject: Re: [USRP-users] E320 GNUradio question
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
Content-Type: multipart/mixed; boundary="===============2798258743288135640=="
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
--===============2798258743288135640==
Content-Type: multipart/alternative;
 boundary="------------000301010101020704060106"

This is a multi-part message in MIME format.
--------------000301010101020704060106
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2020 06:03 PM, Chintan Patel wrote:
> Hi Marcus,
>
> I see. So the E320 would still need gnu radio installed on its PS?  
> Are there instructions on how to do that for the Zynq device or is 
> that already pre-installed as part of the E320 software?
>
> Chintan
Yes, it would.  Just like any other library your software might rely 
upon--that has to be installed on the target system.  Gnu Radio is no
   different.

https://kb.ettus.com/E320_Getting_Started_Guide#Install_and_Setup_the_Software_Tools_on_Your_Host_Computer
>
> On Mon, Aug 10, 2020 at 5:10 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 08/10/2020 05:07 PM, Chintan Patel via USRP-users wrote:
>     > Hi,
>     >
>     > In the flow-graphs that use RFNOC blocks for E320 devices, is GRC
>     > installed on the Zynq processor on the SOC or a separate PC/host?
>     >
>     > Thanks
>     > Chintan
>     >
>     You don't need GRC at run-time.  It's like an IDE.
>
>     So, you can develop code on a regular PC host, and run it on the
>     E320,
>     provided the versions of Gnu Radio and UHD are compatible.
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------000301010101020704060106
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/10/2020 06:03 PM, Chintan Patel
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAOJfBDc1D2mjsyi6ginZAyAxJ9HnHCH1QTXCRJxNW2WUCFySEA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Marcus,
        <div><br>
        </div>
        <div>I see. So the E320 would still need gnu radio installed on
          its PS?  Are there instructions on how to do that for the Zynq
          device or is that already pre-installed as part of the E320
          software?</div>
        <div><br>
        </div>
        <div>Chintan</div>
      </div>
    </blockquote>
    Yes, it would.  Just like any other library your software might rely
    upon--that has to be installed on the target system.  Gnu Radio is
    no<br>
      different.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/E320_Getting_Started_Guide#Install_and_Setup_the_Software_Tools_on_Your_Host_Computer">https://kb.ettus.com/E320_Getting_Started_Guide#Install_and_Setup_the_Software_Tools_on_Your_Host_Computer</a><br>
    <blockquote
cite="mid:CAOJfBDc1D2mjsyi6ginZAyAxJ9HnHCH1QTXCRJxNW2WUCFySEA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Aug 10, 2020 at 5:10
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          08/10/2020 05:07 PM, Chintan Patel via USRP-users wrote:<br>
          &gt; Hi,<br>
          &gt;<br>
          &gt; In the flow-graphs that use RFNOC blocks for E320
          devices, is GRC <br>
          &gt; installed on the Zynq processor on the SOC or a separate
          PC/host?<br>
          &gt;<br>
          &gt; Thanks<br>
          &gt; Chintan<br>
          &gt;<br>
          You don't need GRC at run-time.  It's like an IDE.<br>
          <br>
          So, you can develop code on a regular PC host, and run it on
          the E320, <br>
          provided the versions of Gnu Radio and UHD are compatible.<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000301010101020704060106--


--===============2798258743288135640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2798258743288135640==--

