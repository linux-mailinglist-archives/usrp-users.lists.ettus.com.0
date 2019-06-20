Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E61F4D008
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 16:09:34 +0200 (CEST)
Received: from [::1] (port=46092 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdxkl-0003Tw-W7; Thu, 20 Jun 2019 10:09:27 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:46295)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hdxkh-0003Oj-Fy
 for usrp-users@lists.ettus.com; Thu, 20 Jun 2019 10:09:23 -0400
Received: by mail-qk1-f174.google.com with SMTP id x18so1944466qkn.13
 for <usrp-users@lists.ettus.com>; Thu, 20 Jun 2019 07:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=cv4u28LNPh/pAtxQEhwk4DkkganPQFuvoM9AwHKjR3s=;
 b=Fo628DoA9WOGSFgDGRm/1LqlJufPkpGIWS+dOBUXPkaaDRqO8j8ib1Iu9+GPhnWqNx
 XXQ0LjnS+0AA7ZDX52gM6o5Yev6o0sTcbP1ZOk9+i/M0mb7oMOD/yEpr48/v4R/g/Xwh
 2qw8DzaEg86LY7RfnNR8XxYeKRCvCNL6T66A+k6So/lmeeerafVK20oHvCcZvRuEevxE
 TzmWCczdvWuABQ2INaXPqUgm39HvfiaRFwO5ajRPfeCVg9Z1iq7EBWlsi6hhmQWeKl9p
 rs2us0lWPdip77fd8IxiPBdWP3GxDKbh4KwTzeFw1F/1LNe6kANi3KlAM0twkgo+49e1
 UqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=cv4u28LNPh/pAtxQEhwk4DkkganPQFuvoM9AwHKjR3s=;
 b=KE8yjX56sppvGuRA6QxyS7PZ5tWA1HPn8LhTc9EyewpVMk8/BabmhjU4zm9DcqSx4O
 2ZUPhsYk1mnp4Weqd43p55+vJTb2hOJ2jL6BjW6z092xgMcKqQO3LFPLrGGxraD1jh35
 E45kX9Z/6ktWZdl3K/D4rHhIDZNDxrTFt+pPQs70bE+N13ZRccJIDctDDiAgl0iD9QdF
 ibOq32BKr8ILfmPxiYw48gBoDFHzLeVT34NlR0afk15/5zr79MQw/9YQB1omXDQE/7B0
 h5ZmxODXuiCPbq79R9hws/jYkZoOxSwAg/0+ywKGEgJu84/QizLFs2C1qEjMMYWUQHso
 Mhcg==
X-Gm-Message-State: APjAAAW2NAQdJFNM1UuYA1RQTPFNnOGvRV+fe6Q2W824fPLjClI+eONs
 oYlFhRajp6XX2GN5Ir/qyqSyeaUh
X-Google-Smtp-Source: APXvYqy79VmXD+GfeG5g3xZjpB7nCvSyutEiry9z1R8NSZhT52OIa1qg3oKOxOkq7OKfs8bA4fcV0A==
X-Received: by 2002:a37:30c:: with SMTP id 12mr11438397qkd.175.1561039722751; 
 Thu, 20 Jun 2019 07:08:42 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id s35sm14140415qts.10.2019.06.20.07.08.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 07:08:42 -0700 (PDT)
Message-ID: <5D0B9369.5050401@gmail.com>
Date: Thu, 20 Jun 2019 10:08:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] USRP gain refers to which amplifier
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
Content-Type: multipart/mixed; boundary="===============2168724150343273543=="
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
--===============2168724150343273543==
Content-Type: multipart/alternative;
 boundary="------------010005090407050809030301"

This is a multi-part message in MIME format.
--------------010005090407050809030301
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 06/20/2019 06:48 AM, Koyel Das (Vehere) via USRP-users wrote:
>
> Hi,
>
>
> When we set the gain of USRP does that mean we are increasing the gain 
> of amplifier just after the antenna or the gain is spread across 
> various amplifiers in the chain?
>
>
> Regards,
>
> Koyel Das
> Senior – Product Engineer
>
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: 
> www.vehere.com <http://www.vehere.com/>/
> /
/It depends very much on exactly which USRP and daughterboard is in use.

By default, the set-gain function will make "sensible" decisions about 
distributing gain over the various elements in whatever hardware
   it's dealing with.

See:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049ed3d0f5fc96e87b2a

and:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675aa796e030bd8a03e

and:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11


/
> //
> /unnamed 
> <https://www.linkedin.com/company/vehere-interactive-p-ltd>unnamed (1) 
> <https://twitter.com/VehereIndia>unnamed (2) 
> <https://www.facebook.com/VehereIndia/>
>
> Vehere is the proud recipient of the Fastest Growing Technology 
> Company Awards in India & Asia since 2012!/
>
> The content of this e-mail is confidential and intended solely for the 
> use of the addressee. The text of this email (including any 
> attachments) may contain information, which is proprietary and/or 
> confidential or privileged in nature belonging to Vehere Interactive 
> Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you 
> are not the addressee, or the person responsible for delivering it to 
> the addressee, any disclosure, copying, distribution or any action 
> taken or omitted to be taken in reliance on it is prohibited and may 
> be unlawful. If you have received this e-mail in error, please notify 
> the sender and remove this communication entirely from your system. 
> The recipient acknowledges that no guarantee or any warranty is given 
> as to completeness and accuracy of the content of the email. The 
> recipient further acknowledges that the views contained in the email 
> message are those of the sender and may not necessarily reflect those 
> of Vehere Interactive Pvt Ltd. Before opening and accessing the 
> attachment please check and scan for virus. WARNING: Computer viruses 
> can be transmitted via email. The recipient should check this email 
> and any attachments for the presence of viruses. The company accepts 
> no liability for any damage caused by any virus transmitted by this email.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------010005090407050809030301
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/20/2019 06:48 AM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p style="margin-top:0;margin-bottom:0">Hi,</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">When we set the gain of
          USRP does that mean we are increasing the gain of amplifier
          just after the antenna or the gain is spread across various
          amplifiers in the chain?</p>
        <p style="margin-top:0;margin-bottom:0"><br>
        </p>
        <p style="margin-top:0;margin-bottom:0">Regards,</p>
        <div id="Signature">
          <meta content="text/html; charset=UTF-8">
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size:
            12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica,
            sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;,
            &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
            Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
            <p
              style="font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple
              Color Emoji&quot;,&quot;Segoe UI
              Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
              Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;
              font-size:16px; line-height:16px">
              <font face="Tahoma,serif"><font style="font-size:9pt">Koyel
                  Das                                     <br>
                  Senior – Product Engineer</font></font></p>
            <font style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt">Vehere | Proactive Communications
                Intelligence &amp; Cyber Defence</font></font><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt"><br>
                M: +919051132173 | </font></font><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt">T: +91 33 40545454 | F: +91 33
                40545455 | W: <a moz-do-not-send="true"
                  href="http://www.vehere.com/" target="_blank"
                  rel="noopener noreferrer" id="LPNoLP">www.vehere.com</a></font></font><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt"><i><br>
                </i></font></font></div>
        </div>
      </div>
    </blockquote>
    <font face="Tahoma,serif"><i>It depends very much on exactly which
        USRP and daughterboard is in use.<br>
        <br>
        By default, the set-gain function will make "sensible" decisions
        about distributing gain over the various elements in whatever
        hardware<br>
          it's dealing with.<br>
        <br>
        See:<br>
        <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049ed3d0f5fc96e87b2a">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049ed3d0f5fc96e87b2a</a><br>
        <br>
        and:<br>
        <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675aa796e030bd8a03e">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675aa796e030bd8a03e</a><br>
        <br>
        and:<br>
        <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11</a><br>
        <br>
        <br>
      </i></font>
    <blockquote
cite="mid:BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <div id="Signature">
          <div id="divtagdefaultwrapper" dir="ltr" style="font-size:
            12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica,
            sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;,
            &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
            Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"><font
              style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt"><i>
                </i></font></font><br
              style="font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple
              Color Emoji&quot;,&quot;Segoe UI
              Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
              Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;
              font-size:16px">
            <font style="font-size:16px" face="Tahoma,serif"><font
                style="font-size:9pt"><i><a moz-do-not-send="true"
                    href="https://www.linkedin.com/company/vehere-interactive-p-ltd"
                    target="_blank" rel="noopener noreferrer"
                    id="LPNoLP"><span style="color:rgb(34,34,34);
                      font-size:9.5pt;
                      font-family:Arial,sans-serif,serif,EmojiFont;
                      text-decoration-line:none"><img
                        moz-do-not-send="true" alt="unnamed"
                        style="width: 18pt; height: 18pt; user-select:
                        none;"
src="https://mail.google.com/mail/u/0/?ui=2&amp;ik=c1534bb6ee&amp;view=fimg&amp;th=15cd46f4a213fe89&amp;attid=0.1&amp;disp=emb&amp;attbid=ANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOplQP4e4KtrWgsZRDQ&amp;sz=w48-h48&amp;ats=1498219245179&amp;rm=15cd46f4a213fe89&amp;zw&amp;atsh=1"
                        border="0"></span></a><span
                    style="color:rgb(34,34,34); font-size:9.5pt;
                    font-family:Arial,sans-serif,serif,EmojiFont"> </span><a
                    moz-do-not-send="true"
                    href="https://twitter.com/VehereIndia"
                    target="_blank" rel="noopener noreferrer"
                    id="LPNoLP"><span style="color:rgb(34,34,34);
                      font-size:9.5pt;
                      font-family:Arial,sans-serif,serif,EmojiFont;
                      text-decoration-line:none"><img
                        moz-do-not-send="true" alt="unnamed (1)"
                        style="width: 18pt; height: 18pt; user-select:
                        none;"
src="https://mail.google.com/mail/u/0/?ui=2&amp;ik=c1534bb6ee&amp;view=fimg&amp;th=15cd46f4a213fe89&amp;attid=0.2&amp;disp=emb&amp;attbid=ANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=w48-h48&amp;ats=1498219245179&amp;rm=15cd46f4a213fe89&amp;zw&amp;atsh=1"
                        border="0"></span></a><span
                    style="color:rgb(34,34,34); font-size:9.5pt;
                    font-family:Arial,sans-serif,serif,EmojiFont"> </span><a
                    moz-do-not-send="true"
                    href="https://www.facebook.com/VehereIndia/"
                    target="_blank" rel="noopener noreferrer"
                    id="LPNoLP"><span style="color:rgb(34,34,34);
                      font-size:9.5pt;
                      font-family:Arial,sans-serif,serif,EmojiFont;
                      text-decoration-line:none"><img
                        moz-do-not-send="true" alt="unnamed (2)"
                        style="width: 18pt; height: 18pt; user-select:
                        none;"
src="https://mail.google.com/mail/u/0/?ui=2&amp;ik=c1534bb6ee&amp;view=fimg&amp;th=15cd46f4a213fe89&amp;attid=0.3&amp;disp=emb&amp;attbid=ANGjdJ9JZdmekO-R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5RwgNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=w48-h48&amp;ats=1498219245179&amp;rm=15cd46f4a213fe89&amp;zw&amp;atsh=1"
                        border="0"></span></a><span
                    style="color:rgb(34,34,34); font-size:9.5pt;
                    font-family:Arial,sans-serif,serif,EmojiFont">  </span><span
                    style="color:rgb(34,34,34);
                    font-family:Tahoma,sans-serif,serif,EmojiFont"><br>
                  </span><br>
                  Vehere is the proud recipient of the Fastest Growing
                  Technology Company Awards in India &amp; Asia since
                  2012!</i></font></font><font style="font-size:16px"
              face="Tahoma,serif"><font style="font-size:9pt"><br>
                <br>
                The content of this e-mail is confidential and intended
                solely for the use of the addressee. The text of this
                email (including any attachments) may contain
                information, which is proprietary and/or confidential or
                privileged in nature belonging to Vehere Interactive Pvt
                Ltd and/or its associates/ group companies/
                subsidiaries. If you are not the addressee, or the
                person responsible for delivering it to the addressee,
                any disclosure, copying, distribution or any action
                taken or omitted to be taken in reliance on it is
                prohibited and may be unlawful. If you have received
                this e-mail in error, please notify the sender and
                remove this communication entirely from your system. The
                recipient acknowledges that no guarantee or any warranty
                is given as to completeness and accuracy of the content
                of the email. The recipient further acknowledges that
                the views contained in the email message are those of
                the sender and may not necessarily reflect those of
                Vehere Interactive Pvt Ltd. Before opening and accessing
                the attachment please check and scan for virus. WARNING:
                Computer viruses can be transmitted via email. The
                recipient should check this email and any attachments
                for the presence of viruses. The company accepts no
                liability for any damage caused by any virus transmitted
                by this email.</font></font><br>
          </div>
        </div>
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

--------------010005090407050809030301--


--===============2168724150343273543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2168724150343273543==--

