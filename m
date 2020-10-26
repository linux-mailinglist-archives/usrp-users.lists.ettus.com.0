Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC360299614
	for <lists+usrp-users@lfdr.de>; Mon, 26 Oct 2020 19:55:32 +0100 (CET)
Received: from [::1] (port=42612 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kX7eV-0006hp-8A; Mon, 26 Oct 2020 14:55:31 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:38271)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kX7eR-0006be-Ah
 for usrp-users@lists.ettus.com; Mon, 26 Oct 2020 14:55:27 -0400
Received: by mail-qk1-f175.google.com with SMTP id j129so5562238qke.5
 for <usrp-users@lists.ettus.com>; Mon, 26 Oct 2020 11:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=uephf71jCONoY58iNgCnnAAxHEER5TgScyn6zXtXxSI=;
 b=NPPwtATeI6I57Ag+0vyyAfnALHf4c2za3YTrf1k+0tvibwH8JpAphUtgVLHcMbkJsL
 DImQOgsO7Lw4/ps9R09XR6bX3zD1KlfuGMbqiyQqIs+jzEgr0U9XERy+Xqtbc7lB2iV9
 LmhcY14+odIG7I4/HM3H4H3H+MTrsav16BwPxYBcQsfzj9fBv3eaOiM/+5Sz7E1MvVTY
 q1UtDBh0En5yh3FAPJL3jreKH4TB7m6owgnpkH47UMIgvKgVVbXqRn2RTdmlRHuq/aI0
 EEgBfYRbbz90PJMyBFXAgPt4zMEsSOxsFFl+we/3SuxnAYZrg7VtcPeyAnpQajeL8oNZ
 IKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=uephf71jCONoY58iNgCnnAAxHEER5TgScyn6zXtXxSI=;
 b=ZICMO0ynQ8EejysUVicdiGSX0A+RQRYOEO5uTQ629X5MJmxvTIg/VhuULeQufG7RD/
 1j7lYoH10F9nNC4q9fzXLvHqAtwX4IvshcBfEU8Nc8mh7q23e9ZWLfbqiDAgWEINJvh9
 Cjw/aVCoq9RJEmycEoDiRd217CL04cix6P2ff5Kp1QG/6GLNTYSDuz8xIGfPmNVt8Cp2
 QRZLe5ehE3i9fsrCugIghbo8TcGOXxk+p4do4tYkbpG/Z1qu6Y+CRNGumadU63yc80E3
 E6ScA0kwVboVdAoE5Pf4JgPl0s8Lvx0Mc8iW/IV5MyceNy6QqrtqjysdX+c4yClp2FiR
 JTpw==
X-Gm-Message-State: AOAM530FSjiC+6iy/2Pb8COyEFa/7OiaYVXbYFgErlGmNE28bJYBS+sy
 qwf17Xh+8HicYQ/HTTygSfhajIaFyGlPCQ==
X-Google-Smtp-Source: ABdhPJxk2l+uhpq0+Bor08p87obanGrvk8E/AAFaucxsheFUaKrwGa1Zmk5lNn9kt1Dbu0jRRhUqyQ==
X-Received: by 2002:a05:620a:1668:: with SMTP id
 d8mr2371695qko.192.1603738486527; 
 Mon, 26 Oct 2020 11:54:46 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id h4sm7043379qkl.82.2020.10.26.11.54.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Oct 2020 11:54:45 -0700 (PDT)
Message-ID: <5F971B74.8070400@gmail.com>
Date: Mon, 26 Oct 2020 14:54:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu>,
 <5F970B3F.8030604@gmail.com>
 <f13da5fcd69e4c8cbf69798ca4f1975f@gtri.gatech.edu>
In-Reply-To: <f13da5fcd69e4c8cbf69798ca4f1975f@gtri.gatech.edu>
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
Content-Type: multipart/mixed; boundary="===============3842458427937621753=="
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
--===============3842458427937621753==
Content-Type: multipart/alternative;
 boundary="------------040605070802060700050300"

This is a multi-part message in MIME format.
--------------040605070802060700050300
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/26/2020 02:26 PM, Hodges, Jeff via USRP-users wrote:
>
> That's how I read the email as well, but not the behavior I'm seeing. 
> The DEBUG strings (from the USRP_Sink_Block) are informing me that the 
> time command is being processed, but the tune time is really way off:
>
>
>
> [INFO] [B200] Asking for clock rate 32.000000 MHz...
> [INFO] [B200] Actually got clock rate 32.000000 MHz.
>
> ----------------------------------------------------------------------
> Tag Debug:
> Input Stream: 00
>   Offset: 0  Source: n/a     Key: tx_time   Value: {1 0.5}
>   Offset: 0  Source: n/a     Key: packet_len   Value: 100000
>
> ----------------------------------------------------------------------
> Tag Debug:
> Input Stream: 00
>   Offset: 99999  Source: n/a     Key: tx_command   Value: ((time 1 . 
> 0.6) (freq . 2e+08))
>   Offset: 100000  Source: n/a     Key: tx_time   Value: {1 0.7}
>   Offset: 100000  Source: n/a     Key: packet_len   Value: 100000
> ----------------------------------------------------------------------
> DEBUG: Setting command time on mboard
> DEBUG: Processing command message ((time 1 . 0.6) (freq . 2e+08))
>
> ----------------------------------------------------------------------
> Tag Debug:
> Input Stream: 00
>   Offset: 199999  Source: n/a     Key: tx_command   Value: ((time 1 . 
> 0.8) (freq . 2.01e+08))
>   Offset: 200000  Source: n/a     Key: tx_time   Value: {1 0.9}
>   Offset: 200000  Source: n/a     Key: packet_len   Value: 100000
> ----------------------------------------------------------------------
> DEBUG: Setting command time on mboard
> DEBUG: Processing command message ((time 1 . 0.8) (freq . 2.01e+08))
>
> ----------------------------------------------------------------------
> Tag Debug:
> Input Stream: 00
>   Offset: 299999  Source: n/a     Key: tx_command   Value: ((time 2 . 
> 7.45058e-09) (freq . 2.02e+08))
>   Offset: 300000  Source: n/a     Key: tx_time   Value: {2 0.1}
>   Offset: 300000  Source: n/a     Key: packet_len   Value: 100000
> ----------------------------------------------------------------------
> DEBUG: Setting command time on mboard
> DEBUG: Processing command message ((time 2 . 7.45058e-09) (freq . 
> 2.02e+08))
>
>
>
>
> In this case, I'm doing 100 ms bursts + 100 ms dead time. Frequency is 
> shifting 1 MHz at a time. Tuning is approximately 57 ms from the start 
> of each txburst (in the middle of the burst). Somehow the tx_time 
> commands must be interfering with my timed commands. Although, being 
> placed in the same queue in the proper order, they shouldn't affect 
> each other.
>
>
> Jeff
>
> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, October 26, 2020 1:45:35 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] uhd tuning with tagged stream commands
> On 10/26/2020 01:39 PM, Hodges, Jeff via USRP-users wrote:
>>
>> I'm thinking that timed tune commands will not work on tagged streams 
>> in burst mode. Is that correct? I've been looking at the USRP sink 
>> block code and it supports the timed commands on the stream, but from 
>> reading a recent thread, it seems like this will not work because of 
>> how the DUC derives it's time:
>>
>>
>> https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061611.html
>>
>>
>> This thread says DUC derives it's sense of time from the samples, and 
>> if the samples are not streaming, the DUC will not keep track of 
>> time. Therefore, the timed command will not be executed.
>>
>>
>> For example, I set the tx_time tag to 1.0 second and the burst is 
>> 0.05 sec long. Then I place the tuning command tag on the last sample 
>> of the burst with a tune time of 1.05.  The radio does not actually 
>> tune until I transmit the next burst at 1.1 sec (0.05 sec dead time) 
>> and then it tunes at approximately 0.007 sec into the middle of that 
>> burst.
>>
>>
>> I can try to implement tuning during the dead time by making calls 
>> directly to the C++ api at the appropriate time in a separate thread, 
>> but before I do that I just want to confirm that this burst time-tag 
>> method will not work.
>>
>>
>> Thanks in advance,
>>
>>
>> Jeff
>>
>>
> From the quoted thread, it seems that the *radio* part of the timing 
> will work fine, but the DUC won't be able to do its part of the deal--so
>   if your tuning requires "mop up" action on the part of the DUC, it 
> won't work properly.
>
>
>
>
This KB article may be useful in understanding the time-domain behavior 
of AD936x-based devices, such as the B210:

https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD




--------------040605070802060700050300
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/26/2020 02:26 PM, Hodges, Jeff
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:f13da5fcd69e4c8cbf69798ca4f1975f@gtri.gatech.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p>That's how I read the email as well, but not the behavior I'm
          seeing. The DEBUG strings (from the USRP_Sink_Block) are
          informing me that the time command is being processed, but the
          tune time is really way off:</p>
        <p><br>
        </p>
        <div>
          <div><br>
            [INFO] [B200] Asking for clock rate 32.000000 MHz... <br>
            [INFO] [B200] Actually got clock rate 32.000000 MHz.<br>
            <br>
            <div>----------------------------------------------------------------------<br>
              Tag Debug: <br>
              Input Stream: 00<br>
                Offset: 0  Source: n/a     Key: tx_time   Value: {1 0.5}<br>
                Offset: 0  Source: n/a     Key: packet_len   Value:
              100000<br>
              <br>
----------------------------------------------------------------------<br>
              Tag Debug: <br>
              Input Stream: 00<br>
                Offset: 99999  Source: n/a     Key: tx_command   Value:
              ((time 1 . 0.6) (freq . 2e+08))<br>
                Offset: 100000  Source: n/a     Key: tx_time   Value: {1
              0.7}<br>
                Offset: 100000  Source: n/a     Key: packet_len   Value:
              100000<br>
----------------------------------------------------------------------<br>
              DEBUG: Setting command time on mboard <br>
              DEBUG: Processing command message ((time 1 . 0.6) (freq .
              2e+08))<br>
              <br>
----------------------------------------------------------------------<br>
              Tag Debug: <br>
              Input Stream: 00<br>
                Offset: 199999  Source: n/a     Key: tx_command   Value:
              ((time 1 . 0.8) (freq . 2.01e+08))<br>
                Offset: 200000  Source: n/a     Key: tx_time   Value: {1
              0.9}<br>
                Offset: 200000  Source: n/a     Key: packet_len   Value:
              100000<br>
----------------------------------------------------------------------<br>
              DEBUG: Setting command time on mboard <br>
              DEBUG: Processing command message ((time 1 . 0.8) (freq .
              2.01e+08))<br>
              <br>
----------------------------------------------------------------------<br>
              Tag Debug: <br>
              Input Stream: 00<br>
                Offset: 299999  Source: n/a     Key: tx_command   Value:
              ((time 2 . 7.45058e-09) (freq . 2.02e+08))<br>
                Offset: 300000  Source: n/a     Key: tx_time   Value: {2
              0.1}<br>
                Offset: 300000  Source: n/a     Key: packet_len   Value:
              100000<br>
----------------------------------------------------------------------<br>
              DEBUG: Setting command time on mboard<br>
              DEBUG: Processing command message ((time 2 . 7.45058e-09)
              (freq . 2.02e+08))<br>
              <br>
            </div>
            <br>
            <br>
          </div>
        </div>
        <p><br>
        </p>
        <p>In this case, I'm doing 100 ms bursts + 100 ms dead time.
          Frequency is shifting 1 MHz at a time. Tuning is approximately
          57 ms from the start of each txburst (in the middle of the
          burst). Somehow the tx_time commands must be interfering with
          my timed commands. Although, being placed in the same queue in
          the proper order, they shouldn't affect each other.<br>
        </p>
        <p><br>
        </p>
        <p>Jeff<br>
        </p>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b>
          USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on
          behalf of Marcus D. Leech via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Sent:</b> Monday, October 26, 2020 1:45:35 PM<br>
          <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Subject:</b> Re: [USRP-users] uhd tuning with tagged stream
          commands</font>
        <div> </div>
      </div>
      <div>
        <div class="moz-cite-prefix">On 10/26/2020 01:39 PM, Hodges,
          Jeff via USRP-users wrote:<br>
        </div>
        <blockquote
          cite="mid:2e4c47914caf465a8818487b821abf0d@gtri.gatech.edu"
          type="cite">
          <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
          <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
            dir="ltr">
            <p><span>I'm thinking that timed tune commands will not work
                on tagged streams in burst mode. Is that correct? I've
                been looking at the USRP sink block code and it supports
                the timed commands on the stream, but from reading a
                recent thread, it seems like this will not work because
                of how the DUC derives it's time:</span></p>
            <p><br>
            </p>
            <p><a moz-do-not-send="true"
href="https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061611.html"
                class="OWAAutoLink" id="LPlnk705789"
                previewremoved="true">https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-March/061611.html</a><br>
            </p>
            <p><br>
            </p>
            <p><span><span>This thread says DUC derives it's sense of
                  time from the samples, and if the samples are not
                  streaming, the DUC will not keep track of time.
                  Therefore, the timed command will not be executed.</span><br>
              </span></p>
            <p><span><br>
              </span></p>
            <p>For example, I set the tx_time tag to 1.0 second and the
              burst is 0.05 sec long. Then I place the tuning command
              tag on the last sample of the burst with a tune time of
              1.05.  The radio does not actually tune until I transmit
              the next burst at 1.1 sec (0.05 sec dead time) and then it
              tunes at approximately 0.007 sec into the middle of that
              burst.</p>
            <p><br>
            </p>
            <p>I can try to implement tuning during the dead time by
              making calls directly to the C++ api at the appropriate
              time in a separate thread, but before I do that I just
              want to confirm that this burst time-tag method will not
              work.<br>
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
        From the quoted thread, it seems that the *radio* part of the
        timing will work fine, but the DUC won't be able to do its part
        of the deal--so<br>
          if your tuning requires "mop up" action on the part of the
        DUC, it won't work properly.<br>
        <br>
        <br>
        <br>
      </div>
      <br>
    </blockquote>
    This KB article may be useful in understanding the time-domain
    behavior of AD936x-based devices, such as the B210:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040605070802060700050300--


--===============3842458427937621753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3842458427937621753==--

