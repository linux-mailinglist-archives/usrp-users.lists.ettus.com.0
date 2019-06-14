Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6E046216
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jun 2019 17:07:34 +0200 (CEST)
Received: from [::1] (port=52842 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbnng-0005IL-6v; Fri, 14 Jun 2019 11:07:32 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:39613)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hbnnd-0005Ae-0c
 for usrp-users@lists.ettus.com; Fri, 14 Jun 2019 11:07:29 -0400
Received: by mail-qk1-f173.google.com with SMTP id i125so1860155qkd.6
 for <usrp-users@lists.ettus.com>; Fri, 14 Jun 2019 08:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=04cmZ1vatw0hVXq7b9tn8MYXP/xlYC1bsh8AjHx6yrA=;
 b=OlPoXwZCwcuAm1YAC3hb/bJZbsgewmYa/GEMQUEIC85y8idVcc+O4sJ6S9McomG8Tb
 9G7ARPnrow7flLK84P8gdJKmOG5Diko54zmYk5LyIm2EeUd9SJtcz9BXfTuEMfupM8wz
 qlZE6WcigwSglrttAexCQpcsBWNJXxH1/TN0dVzGCCNQgxoTwBvMlezJ9kEgi8uJHWsA
 9HR7TENz5XcsUtU4zjNI5cZx7tgy1mh02w/9NK030sJzHwiZ1IOxf3EfiXHscy5uAY9r
 EmS7MxqkmTTaB8S2qJRHhQmxVqboNBIsJMn+qauAQTqY/Nd6qd/Zq830ZuoiUyhJ6J6h
 sWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=04cmZ1vatw0hVXq7b9tn8MYXP/xlYC1bsh8AjHx6yrA=;
 b=uctwpF4usXaHwuu9Ab7kPhDZJuGT2NaBlxtxGYWdnO4F7/XVQeroq7/Ir27DQ6M1A3
 0Ikbtvrwl9P7hjlLPjScT22zhRtYpmmMJO1tuxFwev9SnLaQyFZPsFTc8ykrhBBsrgd0
 5VRrr+E9LFZj8u1cjwCZ2CxrD7kljTr5R8UHfcOb1reOdGmPrtuGPBr+Ra73PSSZLEHo
 rcUU+2TUPH1/CqP6vt+46mHXVVG7kWIMEcH2MRwW0TrRY9/cogQR05pwMjtpcuoODUn/
 LpdkNFTUaT54Ss9suo3lbVsORA13nwDj5d/oCMQRjFb1NUyrs0LPsUYQsdKt33mfiz7K
 OzNw==
X-Gm-Message-State: APjAAAWjCdc+XcX6lwazpxmD6S2Po2rlzVq9UQcKFjYHs4mCFTtN7t7b
 8uD1aQxbc9jtLKNLFvjPQ8Vswxd0Sm8=
X-Google-Smtp-Source: APXvYqxWCEKSvILqqP1isP4Ylm03HeBMSWT9oTJduZ1rjdLSp5jv9O6PIIRITfJXV7UEBRcdv8jP8A==
X-Received: by 2002:a37:4e17:: with SMTP id c23mr68013473qkb.34.1560524808329; 
 Fri, 14 Jun 2019 08:06:48 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id s64sm1657248qkb.56.2019.06.14.08.06.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 08:06:47 -0700 (PDT)
Message-ID: <5D03B806.3070309@gmail.com>
Date: Fri, 14 Jun 2019 11:06:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <6bc15cb6d0874618914d0d05eb66e585@becas.av.it.pt>
In-Reply-To: <6bc15cb6d0874618914d0d05eb66e585@becas.av.it.pt>
Subject: Re: [USRP-users] RFNoc N310
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
Content-Type: multipart/mixed; boundary="===============3793634945335215122=="
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
--===============3793634945335215122==
Content-Type: multipart/alternative;
 boundary="------------010303070500040902080400"

This is a multi-part message in MIME format.
--------------010303070500040902080400
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2019 11:00 AM, Diogo Botelho Ribeiro Marinho via USRP-users wrote:
>
> Hi,
>
>
> Recently in our research group we acquired the USRP N310. I cannot 
> find any reference to N310 in the RFNOC documentation.
>
> How long until RFNoC N310 images be released?
>
>
> Best regards
> Diogo Marinho
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
N310 does have RFNOC support--this example shows its use on X310 and N310:

https://kb.ettus.com/Using_the_RFNoC_Replay_Block


--------------010303070500040902080400
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/14/2019 11:00 AM, Diogo Botelho
      Ribeiro Marinho via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:6bc15cb6d0874618914d0d05eb66e585@becas.av.it.pt"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none"><!--P{margin-top:0;margin-bottom:0;} --></style>
      <p>Hi,</p>
      <p><br>
      </p>
      <p>Recently in our research group we acquired the USRP N310. I<span> cannot
          find any reference to N310 in the RFNOC documentation. </span></p>
      <p><span><span>How long until RFNoC N310 <span class="bold
              highlight search-highlight">
            </span>images be released?</span> <br>
        </span></p>
      <p><span><br>
        </span></p>
      <span>Best regards <br>
        Diogo Marinho</span>
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
    N310 does have RFNOC support--this example shows its use on X310 and
    N310:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://kb.ettus.com/Using_the_RFNoC_Replay_Block">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a><br>
    <br>
  </body>
</html>

--------------010303070500040902080400--


--===============3793634945335215122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3793634945335215122==--

