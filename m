Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F3723E081
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 20:37:48 +0200 (CEST)
Received: from [::1] (port=53788 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3klv-0003qb-Bz; Thu, 06 Aug 2020 14:37:47 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:40380)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3klr-0003iF-AD
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 14:37:43 -0400
Received: by mail-qt1-f173.google.com with SMTP id s16so37100971qtn.7
 for <USRP-users@lists.ettus.com>; Thu, 06 Aug 2020 11:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=pP5EApZdBR6kttZMpQyu2M08DnHSkbEgkIE58tq6vAA=;
 b=DAB5JerOxNLmNunk9QK6DERAgNXtkPvMV6eptCFFGmjcQs2gGuSwXDgez2pFdcUb5z
 bWdmzfCGSHXLCYIohVD344wRnvpHsuR8+t5NB456rKLNcSXDf95dLsgGliU/Yxbtfp21
 oK7VeNGNzO4CgU1PjP11WzfXCZETjAjS8gQ6h912VKOLTkWPG/MSOinrKnw3Q+rUh8ri
 tDN4/KgN6Y6s3fSGrw9SXJTmwC9vPZsslUuWJEoaV44tYMCAx4c4AGX7MpYn//Vh5yjc
 HFDNVU2d6pP0A+tUaoUMOIK68TSSP6/ofyhR1RwT2xSFNuAIf041yu760bOOyZOLtr4J
 uKqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=pP5EApZdBR6kttZMpQyu2M08DnHSkbEgkIE58tq6vAA=;
 b=CfXZUMz8LoVg9TuOiv0MHaNzSWxshi88VIpISOLnNT3gTvjYjzZgRrZ78O9/MpE428
 sUisbGNh9QTLKZCf4IM8dX750hfU3YvkOqmSjysWCQzd7or9grhWeBw+CHmNS/xDwqrg
 S8ZhgDa5MS9jNMpSwQlRwWpzTr97s1kumPptnMwzkMp53JHIu17WvQwGG1G7THmKNfnF
 Nx/nZQ+R0lhau2B7J691Z/R/DtSdD0lJzihH+WQT7UnjQDlqzth0gHqISj8SgAS52rsa
 DehNml60MI6zIVSo9Q8dPcGPzNWppyGksUxQxsdFpWbDEw0pASCI01csy38xOYSIlyYx
 KL4Q==
X-Gm-Message-State: AOAM532yEHelBCT52jA97c4itdaj/1ybAdpMDbKlfAp2DaNfH5t4AU2a
 eT1fohydSULRqlbFYY26luzwPoCHDbI=
X-Google-Smtp-Source: ABdhPJzhKVJfaYPnzwLYE0+W2WL/yjoOfrNIj56MB6cYmkZDcM18lAbwldx2rL19QuzU1q4l2kAYSQ==
X-Received: by 2002:ac8:73d1:: with SMTP id v17mr10337655qtp.51.1596739022456; 
 Thu, 06 Aug 2020 11:37:02 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w32sm6038016qtw.66.2020.08.06.11.37.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Aug 2020 11:37:01 -0700 (PDT)
Message-ID: <5F2C4DCD.7000307@gmail.com>
Date: Thu, 06 Aug 2020 14:37:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brian Padalino <bpadalino@gmail.com>, 
 Jerrid Plymale <jerrid.plymale@canyon-us.com>
CC: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
 <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
 <MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CAEXYVK41auGzwJpMGWa43pwaa6xX4uy+9A+LT7SQ4-PVNgFnuA@mail.gmail.com>
In-Reply-To: <CAEXYVK41auGzwJpMGWa43pwaa6xX4uy+9A+LT7SQ4-PVNgFnuA@mail.gmail.com>
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
Content-Type: multipart/mixed; boundary="===============8666667604533985708=="
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
--===============8666667604533985708==
Content-Type: multipart/alternative;
 boundary="------------000002030102070707030303"

This is a multi-part message in MIME format.
--------------000002030102070707030303
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/06/2020 02:31 PM, Brian Padalino wrote:
> On Thu, Aug 6, 2020 at 2:28 PM Jerrid Plymale 
> <jerrid.plymale@canyon-us.com <mailto:jerrid.plymale@canyon-us.com>> 
> wrote:
>
>     I am seeing a signal strength between -65 and -70 dBm,
>     approximately, even when transmitting all 0’s.
>
>
> If you really can't handle any LO leakage, can you switch 
> off-frequency between times you want to transmit?
>
> Brian
>
Yeah, I was just about to suggest the same thing.

The UBX max TX power at 1.5GHz is about +20dBm, and with 31.5dB 
gain-control range, what you're seeing is "sneak around" leakage
   from the LO--that is, at minimum TX gain with a "loud" baseband, the 
UBX would be producing about -10dBm out the antenna port. This is
   just the LO signal bumping around inside the enclosure, and finding 
the TX output connector.

The schematic for UBX may suggest other pathways as well, like LO 
disable.  But that may have other consequences, like it taking a while
   for it to "come up" after a disable state (if it even has such a 
state, not sure).





--------------000002030102070707030303
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/06/2020 02:31 PM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAEXYVK41auGzwJpMGWa43pwaa6xX4uy+9A+LT7SQ4-PVNgFnuA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, Aug 6, 2020 at 2:28
            PM Jerrid Plymale &lt;<a moz-do-not-send="true"
              href="mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@canyon-us.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div lang="EN-US">
              <div class="gmail-m_1151575966745623661WordSection1">
                <p class="MsoNormal">I am seeing a signal strength
                  between -65 and -70 dBm, approximately, even when
                  transmitting all 0’s.</p>
              </div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>If you really can't handle any LO leakage, can you switch
            off-frequency between times you want to transmit?</div>
          <div><br>
          </div>
          <div>Brian</div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div lang="EN-US">
              <div class="gmail-m_1151575966745623661WordSection1">
                <div>
                  <div>
                    <div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    Yeah, I was just about to suggest the same thing.<br>
    <br>
    The UBX max TX power at 1.5GHz is about +20dBm, and with 31.5dB
    gain-control range, what you're seeing is "sneak around" leakage<br>
      from the LO--that is, at minimum TX gain with a "loud" baseband,
    the UBX would be producing about -10dBm out the antenna port. This
    is<br>
      just the LO signal bumping around inside the enclosure, and
    finding the TX output connector.<br>
    <br>
    The schematic for UBX may suggest other pathways as well, like LO
    disable.  But that may have other consequences, like it taking a
    while<br>
      for it to "come up" after a disable state (if it even has such a
    state, not sure).<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------000002030102070707030303--


--===============8666667604533985708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8666667604533985708==--

