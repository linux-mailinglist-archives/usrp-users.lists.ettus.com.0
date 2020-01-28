Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA4714BEB0
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jan 2020 18:36:47 +0100 (CET)
Received: from [::1] (port=53312 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwUn5-0001uo-Kz; Tue, 28 Jan 2020 12:36:43 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:33688)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iwUn2-0001Js-M3
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 12:36:40 -0500
Received: by mail-qk1-f176.google.com with SMTP id h23so14206861qkh.0
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 09:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=XZ5QyHnYu2HirBrj2Z8H3+ZNEbn75T5HDzF/R5UX+gY=;
 b=ilvQhpGGvSXL5GAgFYST8RwZJnRg9HEWKgU09uB1CQQputalRZKoK75II9NwCAhrb6
 iYuYWZU00B5FU7szTs6pdnhwiVKrUZSalA2RkZ39B4frjkp64oIaZwy9+W7Q5puDEqFj
 C0mtT4w88TxbMkLtG2hv+u4pdN+jDltR5B8Yghj1hSJqtEMwMkeHJIjJlJu0mvgPeP/i
 CVRyNud+EkB/OeAVNnHanYBVWw23AECipicAC4ObNhKZQkO5JrglkOw30oCrEOm47kf7
 OOp7rEPrennCtw4VZ3kIby0Do1iqGMDqrY9rZI+Q6iNFEGFpsjeycxizvKusYMLZI14D
 vpXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=XZ5QyHnYu2HirBrj2Z8H3+ZNEbn75T5HDzF/R5UX+gY=;
 b=AXyZrWTIbjLB6VPFaTDuXdhBLikKKuvDy4OQ6VQC5L/yyfgNkAZSPtwEQ3u1rObHvc
 1Gow8IXeD4e4JbcaWJc30K6m8jvRPqnNdZoEFHHeyxmRA0wJcB23M+wpo0fGjOqUzdey
 PYZZbjASThOk589MWHiJc9KMxbfYXovw2HqJYK78+Chqr+JXNYXX0vpPZ+DqVTZI+T5j
 RD6nBefLHfanTsAMxKh5fFtK6asWmpFrvg48NhGepLwuXfE1R7BQXFict3H3SnCu3nev
 v84HQPhrr8XHaWeHB4/ysh8V8Zia8ROLK3270fRDzLAfb8KxPsOLwfGrG7R8mlOHfs5D
 FHYg==
X-Gm-Message-State: APjAAAWw+ciGR2u9XRD6HdkaNFhopPBxxkDfoUYuTjTEWd76cX2DvdSQ
 Ku2ZYIi3iFJvD6bSRJ22tdtpKiFM
X-Google-Smtp-Source: APXvYqxmNji/R23ce3MdXN4siql8p3RsUABccnd46RAvrGGOKZUZnDXBgYtS3ncSSDcw9lYAH5mcNQ==
X-Received: by 2002:ae9:e304:: with SMTP id v4mr23274842qkf.399.1580232959895; 
 Tue, 28 Jan 2020 09:35:59 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83]) by smtp.googlemail.com with ESMTPSA id
 s20sm12355794qkj.100.2020.01.28.09.35.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Jan 2020 09:35:59 -0800 (PST)
Message-ID: <5E3070FE.7010607@gmail.com>
Date: Tue, 28 Jan 2020 12:35:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
References: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <FC4F7A4E-97C4-4CBD-8E54-305964E29BB2@gmail.com>
 <BMXPR01MB236051E2B9CC59A25A0F469C8B0F0@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <5E2948D5.4090603@gmail.com>
 <BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>,
 <5E2E8200.8090507@gmail.com>
 <MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0@MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0@MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] phase-aligning two USRPs without Octoclock
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2498052541898671135=="
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
--===============2498052541898671135==
Content-Type: multipart/alternative;
 boundary="------------060503020400030507030700"

This is a multi-part message in MIME format.
--------------060503020400030507030700
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2020 05:53 AM, Sourin Mondal (Vehere) wrote:
> Hi Marcus,
>
> I think my previous email is not sent properly so sending again. 
> Thanks for the information you provided. This 5 degrees is for what 
> frequency? Are you sure its 5 degrees or less? What is the precision?
>
> Regards,
> Sourin
The component of phase offset from the synthesizers should be small, 
after a phase-reset using timed-command tuning, irrespective of
   frequency.  Other components of phase offset, such as differential 
heating effects, wiring-length differences, etc, will have a
   frequency-sensitive component.


> ------------------------------------------------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, January 27, 2020 11:54 AM
> *To:* Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] phase-aligning two USRPs without Octoclock
> On 01/27/2020 01:00 AM, Sourin Mondal (Vehere) wrote:
>> Hi Marcus,
>>
>> Thanks for the information. Could you please also tell what is the 
>> accuracy with which the phases are aligned between USRP channels, 
>> when we use 10 MHz reference to align, in pico-seconds or nano-seconds?
>>
>> Regards,
>> Sourin
> The answer to that question depends very much on the hardware involved.
>
> In general, two synthesizers locked to the same clock won't have a 
> zero phase *offset* from one another, but will be phase-coherent
>   on an ongoing basis.
>
> Now, for *some* types of Ettus hardware, there is special hardware 
> that can arrange to phase-reset during tuning, so that all the 
> participating
>   synthesizers will have small phase-offsets with respect to one another.
>
> We generally talk in terms of degrees, rather than picoseconds or 
> nanoseconds.  Residual phase offsets will typically be under 5 degrees.
>
> But keep in mind that things like differential heating of cables, and 
> internal circuit in ANY coherent radio can case the phase relationships
>   to drift slightly.
>
>
>
>
>> ------------------------------------------------------------------------
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com> 
>> <mailto:patchvonbraun@gmail.com>
>> *Sent:* Thursday, January 23, 2020 12:48 PM
>> *To:* Sourin Mondal (Vehere) <sourin.mondal@vehere.com> 
>> <mailto:sourin.mondal@vehere.com>
>> *Subject:* Re: [USRP-users] phase-aligning two USRPs without Octoclock
>> On 01/22/2020 11:53 PM, Sourin Mondal (Vehere) wrote:
>>>
>>> Hi Marcus,
>>> Do I need to use 1 PPS also along with 10 MHz reference? And are 
>>> there any software commands to be used along with these hardware 
>>> configuration for synchronizing multiple USRPs without octoclock? If 
>>> so what are those commands?
>>>
>>> Regards,
>>> Sourin
>> You would do well to spend some time with this app-note:
>>
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices
>>
>> Indeed, there are many app-notes that might be relevant for you.
>>
>> Along with:
>>
>> http://files.ettus.com/manual/
>>
>>
>


--------------060503020400030507030700
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/28/2020 05:53 AM, Sourin Mondal
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0@MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I think my previous email is not sent properly so sending again.
        Thanks for the information you provided. This 5 degrees is for
        what frequency? Are you sure its 5 degrees or less? What is the
        precision?</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Regards,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Sourin</div>
    </blockquote>
    The component of phase offset from the synthesizers should be small,
    after a phase-reset using timed-command tuning, irrespective of<br>
      frequency.  Other components of phase offset, such as differential
    heating effects, wiring-length differences, etc, will have a<br>
      frequency-sensitive component.<br>
    <br>
    <br>
    <blockquote
cite="mid:MA1PR0101MB17019C1C64CD5C8E69CFE0118B0A0@MA1PR0101MB1701.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b> Marcus
          D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Monday, January 27, 2020 11:54 AM<br>
          <b>To:</b> Sourin Mondal (Vehere)
          <a class="moz-txt-link-rfc2396E" href="mailto:sourin.mondal@vehere.com">&lt;sourin.mondal@vehere.com&gt;</a><br>
          <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] phase-aligning two USRPs
          without Octoclock</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 01/27/2020 01:00 AM, Sourin
          Mondal (Vehere) wrote:<br>
        </div>
        <blockquote type="cite">
          <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi Marcus,</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks for the information. Could you please also tell what
            is the accuracy with which the phases are aligned between
            USRP channels, when we use 10 MHz reference to align, in
            pico-seconds or nano-seconds?</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Regards,</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Sourin</div>
        </blockquote>
        The answer to that question depends very much on the hardware
        involved.<br>
        <br>
        In general, two synthesizers locked to the same clock won't have
        a zero phase *offset* from one another, but will be
        phase-coherent<br>
          on an ongoing basis.<br>
        <br>
        Now, for *some* types of Ettus hardware, there is special
        hardware that can arrange to phase-reset during tuning, so that
        all the participating<br>
          synthesizers will have small phase-offsets with respect to one
        another.<br>
        <br>
        We generally talk in terms of degrees, rather than picoseconds
        or nanoseconds.  Residual phase offsets will typically be under
        5 degrees.<br>
        <br>
        But keep in mind that things like differential heating of
        cables, and internal circuit in ANY coherent radio can case the
        phase relationships<br>
          to drift slightly.  <br>
        <br>
        <br>
        <br>
        <br>
        <blockquote type="cite">
          <hr tabindex="-1" style="display:inline-block; width:98%">
          <div id="x_divRplyFwdMsg" dir="ltr"><font
              style="font-size:11pt" color="#000000" face="Calibri,
              sans-serif"><b>From:</b> Marcus D. Leech
              <a moz-do-not-send="true" class="x_moz-txt-link-rfc2396E"
                href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
              <b>Sent:</b> Thursday, January 23, 2020 12:48 PM<br>
              <b>To:</b> Sourin Mondal (Vehere) <a
                moz-do-not-send="true" class="x_moz-txt-link-rfc2396E"
                href="mailto:sourin.mondal@vehere.com">
                &lt;sourin.mondal@vehere.com&gt;</a><br>
              <b>Subject:</b> Re: [USRP-users] phase-aligning two USRPs
              without Octoclock</font>
            <div> </div>
          </div>
          <div style="background-color:#FFFFFF">
            <div class="x_x_moz-cite-prefix">On 01/22/2020 11:53 PM,
              Sourin Mondal (Vehere) wrote:<br>
            </div>
            <blockquote type="cite">
              <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Hi Marcus,</div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Do I need to use 1 PPS also along with 10 MHz reference?
                And are there any software commands to be used along
                with these hardware configuration for synchronizing
                multiple USRPs without octoclock? If so what are those
                commands?</div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Regards, </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Sourin</div>
              <div dir="auto">
              </div>
            </blockquote>
            You would do well to spend some time with this app-note:<br>
            <br>
            <a moz-do-not-send="true" class="x_x_moz-txt-link-freetext"
href="https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices</a><br>
            <br>
            Indeed, there are many app-notes that might be relevant for
            you.<br>
            <br>
            Along with:<br>
            <br>
            <a moz-do-not-send="true" class="x_x_moz-txt-link-freetext"
              href="http://files.ettus.com/manual/">http://files.ettus.com/manual/</a><br>
            <br>
            <br>
          </div>
        </blockquote>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060503020400030507030700--


--===============2498052541898671135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2498052541898671135==--

