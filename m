Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B7299434
	for <lists+usrp-users@lfdr.de>; Mon, 26 Oct 2020 18:46:21 +0100 (CET)
Received: from [::1] (port=41944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kX6ZY-0002PE-Rq; Mon, 26 Oct 2020 13:46:20 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:44093)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kX6ZV-0002I4-1B
 for usrp-users@lists.ettus.com; Mon, 26 Oct 2020 13:46:17 -0400
Received: by mail-qk1-f169.google.com with SMTP id s14so9154827qkg.11
 for <usrp-users@lists.ettus.com>; Mon, 26 Oct 2020 10:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=U9cFxBBkLNePpSzVJAGjb6NrHDJBmDzhGcJE/N/OnDg=;
 b=oa8MTglc9gAiDNabkNUjLw5zcmExvbL+9+6a/oSPCKKqxvRiBGIewZq8z4uUJqt0uT
 1XolypV/XahOa6zHd4dXmeqhX+Z0lnKCuE7Gg0IZkqcRyjVdtCyU5cwqXuPyPjdU5Ttw
 6RoBNG5fO87y3f+1Q0yh1sW5iSknoj7XmTYln57hzWkoKhFQGbup4DmibX9IwXm7NEKa
 CdxMrQy2rdsLBTBzY3CDc5RbNHwNSKDtmxD4Fj4jkx+CXY4H+nw6aYP37grX3KdaWr9W
 ERMucBGV3I1XBZJ3XG+bTwREtMQX6ctIoguAuD5Va32V8PKY7/mLKfoLpyYyYml+S317
 XiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=U9cFxBBkLNePpSzVJAGjb6NrHDJBmDzhGcJE/N/OnDg=;
 b=H5izHWH4tadHvI4iN2lpiaGmLKYeFr6ixiMhs9EmhpUWChbVdOpHcz+IunK/P4k1bh
 SdokPjwcpk6oSSnqdOgIgnymWSkpCG1FU+soziCeI+oVe/VjDV3+/FG51jP4pHUG9neH
 1wKFnU+gfhHJ/tgTNPoh5EoNwWZirUO5S7S3Jj4zMHZXht5fcCn1jEAb7wuJa0EzQnbC
 js/ztmhKaXxIFRF96nMrkRHQir2idUF1BTWEnRz2viuDX1l9Jrh08m3vzsn6g/KBQ99C
 kHVUOXUM1GReQjhH4qPiVJKh8Ok5oD1xZdd1VxmhOscGac2Co2RGubEnVYkSzmdSrfr7
 JdAA==
X-Gm-Message-State: AOAM5319BeYpti6GA3ybq31nQuGwvUGFfNJEzaEYMV6z4R4Hv0Voq1Jc
 +XrLMZHb7+yXa2ksEIlR3/jLtIMfpeBVKQ==
X-Google-Smtp-Source: ABdhPJzictunUfcvtSuB+g7plv3ujHbA7ytJVu1CXzioTq0AKXC+sjyjWbg8dqAUa3BgXft+RwkaDA==
X-Received: by 2002:a37:a9c9:: with SMTP id
 s192mr16447171qke.128.1603734336332; 
 Mon, 26 Oct 2020 10:45:36 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id t70sm6778800qke.119.2020.10.26.10.45.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Oct 2020 10:45:35 -0700 (PDT)
Message-ID: <5F970B3F.8030604@gmail.com>
Date: Mon, 26 Oct 2020 13:45:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu>
In-Reply-To: <2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu>
Subject: Re: [USRP-users] uhd tuning with tagged stream commands
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
Content-Type: multipart/mixed; boundary="===============6040151301384697175=="
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
--===============6040151301384697175==
Content-Type: multipart/alternative;
 boundary="------------000908020106000400020808"

This is a multi-part message in MIME format.
--------------000908020106000400020808
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/26/2020 01:39 PM, Hodges, Jeff via USRP-users wrote:
>
> I'm thinking that timed tune commands will not work on tagged streams 
> in burst mode. Is that correct? I've been looking at the USRP sink 
> block code and it supports the timed commands on the stream, but from 
> reading a recent thread, it seems like this will not work because of 
> how the DUC derives it's time:
>
>
> https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061611.html
>
>
> This thread says DUC derives it's sense of time from the samples, and 
> if the samples are not streaming, the DUC will not keep track of time. 
> Therefore, the timed command will not be executed.
>
>
> For example, I set the tx_time tag to 1.0 second and the burst is 0.05 
> sec long. Then I place the tuning command tag on the last sample of 
> the burst with a tune time of 1.05.  The radio does not actually tune 
> until I transmit the next burst at 1.1 sec (0.05 sec dead time) and 
> then it tunes at approximately 0.007 sec into the middle of that burst.
>
>
> I can try to implement tuning during the dead time by making calls 
> directly to the C++ api at the appropriate time in a separate thread, 
> but before I do that I just want to confirm that this burst time-tag 
> method will not work.
>
>
> Thanks in advance,
>
>
> Jeff
>
>
 From the quoted thread, it seems that the *radio* part of the timing 
will work fine, but the DUC won't be able to do its part of the deal--so
   if your tuning requires "mop up" action on the part of the DUC, it 
won't work properly.




--------------000908020106000400020808
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/26/2020 01:39 PM, Hodges, Jeff
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p><span>I'm thinking that timed tune commands will not work on
            tagged streams in burst mode. Is that correct? I've been
            looking at the USRP sink block code and it supports the
            timed commands on the stream, but from reading a recent
            thread, it seems like this will not work because of how the
            DUC derives it's time:</span></p>
        <p><br>
        </p>
        <p><a moz-do-not-send="true"
href="https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061611.html"
            class="OWAAutoLink" id="LPlnk705789" previewremoved="true">https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061611.html</a><br>
        </p>
        <p><br>
        </p>
        <p><span><span>This thread says DUC derives it's sense of time
              from the samples, and if the samples are not streaming,
              the DUC will not keep track of time. Therefore, the timed
              command will not be executed.</span><br>
          </span></p>
        <p><span><br>
          </span></p>
        <p>For example, I set the tx_time tag to 1.0 second and the
          burst is 0.05 sec long. Then I place the tuning command tag on
          the last sample of the burst with a tune time of 1.05.  The
          radio does not actually tune until I transmit the next burst
          at 1.1 sec (0.05 sec dead time) and then it tunes at
          approximately 0.007 sec into the middle of that burst.</p>
        <p><br>
        </p>
        <p>I can try to implement tuning during the dead time by making
          calls directly to the C++ api at the appropriate time in a
          separate thread, but before I do that I just want to confirm
          that this burst time-tag method will not work.<br>
        </p>
        <p><br>
        </p>
        <p>Thanks in advance,<br>
        </p>
        <p><br>
        </p>
        <p>Jeff<br>
        </p>
      </div>
      <br>
    </blockquote>
    From the quoted thread, it seems that the *radio* part of the timing
    will work fine, but the DUC won't be able to do its part of the
    deal--so<br>
      if your tuning requires "mop up" action on the part of the DUC, it
    won't work properly.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------000908020106000400020808--


--===============6040151301384697175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6040151301384697175==--

