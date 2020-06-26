Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DFE20AA27
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 03:33:37 +0200 (CEST)
Received: from [::1] (port=56628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jodFF-00011b-VV; Thu, 25 Jun 2020 21:33:33 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:33037)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jodFC-0000ws-L8
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 21:33:30 -0400
Received: by mail-qk1-f173.google.com with SMTP id j80so7482724qke.0
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 18:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=hbF5U1jyvv2oC0z6cCfzZyX8LMmfV9W8L3veVR9VZow=;
 b=ZjiCHHG+BxyWw5Xce8r0EAVRy4eHgrdb2TUWCEIkieJa+271t2n7Et7qof631dymMQ
 kG1jVPCeGU5gNyeP7V8kA2mXMWXVosRfA0R4u99PjegzpaKRGnUNCI9nqfsVDXqrskZP
 hIrA58xmP51JZqm/xo9s5C1Ykihm22JDTdjE+jf/bHTpDj5D2nXBn1u3eUrhKQ+v9dWr
 dCSxY+BBc6pDup/Qtgd9DhGmXs0sM5Y9KFSweM6zto0+BPdf+zL8Tbd18o0qnMajr+h2
 ITNjf8yyC+MmIkTcn2eKAAcgqJCqeE6LgD5flwszGHnhpsflKnLCPZBU8v60wQHv6k7G
 DO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=hbF5U1jyvv2oC0z6cCfzZyX8LMmfV9W8L3veVR9VZow=;
 b=aAeaGqHIKyHe80qoruP4yfCbaIsBBIAW4XrMRODnaliz2n1lMOF9uHM97AUdwhT6Hf
 3pCsdOjQl5u5c5NSHtSoYBKz3ROmnvP7daAQMZ7Fj1sm/3FPTktEqk83sxtOPswp4vrm
 lCQd9EUIM1skyWnxWCieiEgKOoqWNvwZ7xIueIKppUmbAEtquG+daHg1KcN21Bd768Uy
 +dFqA1BNMKqE1KEJ5jTN2/Strn4uV7hRkYRfmFPuILIKwfMNtTIQGYRwqTVlswutf4j5
 gAhXjE/hL0ea5+DGoz9qIojxqJrseLw0TvmOY0SY9vqFKaq9YkVxDkCeqKlaSv5wRyxm
 I9/g==
X-Gm-Message-State: AOAM530wfVrsZJTfktFKnzwsdBgDj5qIi+z6De/8pkuxTmhkifTayqSu
 /W9nQ3LJPr5OpgzXNHF9sCUTv3GLnC8=
X-Google-Smtp-Source: ABdhPJzN3ffyHoxN21DQZOQi5NQ+mBeo7CD6WPuIFQHzjIeCGi0JPhiRZArxcZRcrDq+9+fH7efAsA==
X-Received: by 2002:a37:44d5:: with SMTP id r204mr584492qka.113.1593135169865; 
 Thu, 25 Jun 2020 18:32:49 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id c24sm8145902qtd.82.2020.06.25.18.32.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jun 2020 18:32:49 -0700 (PDT)
Message-ID: <5EF5503F.90107@gmail.com>
Date: Thu, 25 Jun 2020 21:32:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAKo1dg8K+KaY8mJbr1Wxp=OKzhb3NE8yfubvewRF7=qcu6-_5w@mail.gmail.com>
 <0F07FBF3-3FB7-461A-A33A-F6C5A559D138@gmail.com>
 <CAKo1dg9oOM6ZTKBWv-=BK7zHmwotBhm0ry8CGZnby9zb-fhWyw@mail.gmail.com>
 <CAKo1dg_C4jd84__5xQctkOjwsu+od9+1O0ajmS1pdB8QxY+Zag@mail.gmail.com>
In-Reply-To: <CAKo1dg_C4jd84__5xQctkOjwsu+od9+1O0ajmS1pdB8QxY+Zag@mail.gmail.com>
Subject: Re: [USRP-users] Fwd:  Included headers in the installer:
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
Content-Type: multipart/mixed; boundary="===============7147723148115730097=="
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
--===============7147723148115730097==
Content-Type: multipart/alternative;
 boundary="------------050607030004090904090702"

This is a multi-part message in MIME format.
--------------050607030004090904090702
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 06/24/2020 05:39 AM, Andreas Hagström via USRP-users wrote:
>
>
> ---------- Forwarded message ---------
> Från: *Andreas Hagström* <andreas.hagstrom@testteknik.se 
> <mailto:andreas.hagstrom@testteknik.se>>
> Date: ons 24 juni 2020 kl 09:36
> Subject: Re: [USRP-users] Included headers in the installer:
> To: Marcus D Leech <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>>
>
>
> Sorry, here is the complimentare information:
> Windows 64 bit version and built on vs2017.
>
OK.  I'm not very familiar with the Windows installation. My hunch is 
that you don't have the PYTHONPATH environment variable set
   to point to where the installer placed the Python bits and pieces.



--------------050607030004090904090702
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/24/2020 05:39 AM, Andreas
      Hagström via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAKo1dg_C4jd84__5xQctkOjwsu+od9+1O0ajmS1pdB8QxY+Zag@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">---------- Forwarded message
            ---------<br>
            Från: <b class="gmail_sendername" dir="auto">Andreas
              Hagström</b> <span dir="auto">&lt;<a
                moz-do-not-send="true"
                href="mailto:andreas.hagstrom@testteknik.se">andreas.hagstrom@testteknik.se</a>&gt;</span><br>
            Date: ons 24 juni 2020 kl 09:36<br>
            Subject: Re: [USRP-users] Included headers in the installer:<br>
            To: Marcus D Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;<br>
          </div>
          <br>
          <br>
          <div dir="ltr">
            <div>Sorry, here is the complimentare information:<br>
            </div>
            <div>Windows 64 bit version and built on vs2017.</div>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    OK.  I'm not very familiar with the Windows installation. My hunch
    is that you don't have the PYTHONPATH environment variable set<br>
      to point to where the installer placed the Python bits and pieces.<br>
    <br>
    <br>
  </body>
</html>

--------------050607030004090904090702--


--===============7147723148115730097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7147723148115730097==--

