Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E086BCDC
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 15:18:52 +0200 (CEST)
Received: from [::1] (port=37116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnjpY-0006hp-4x; Wed, 17 Jul 2019 09:18:48 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:45674)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hnjpV-0006bK-2y
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 09:18:45 -0400
Received: by mail-qk1-f174.google.com with SMTP id s22so17421113qkj.12
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 06:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=FSjwGNOW0opjnBqjO5zohi7ls6ypUVJ8PL3V+CqTR98=;
 b=QizW7214qKn1XperQew9eYRzoqPvhSVtFghlyOhCXgHWJvr3LQ/zlWRY1V1PVFwL1B
 iHgpKTyuuqOBFKPKUA17ud2aInoCQLQswho6jQHf5F5VsZ6Yc6sUu6EnxZ5gfjBRCYPu
 yk/L/C81P6OwD/PjzZn3xdbxAn4S75XiahiTJm3DEsDs/gbttXSP9mSKfIS0F9P8frKr
 +wVndlgyxt2mLa+QW3yQPNpZhZc0Lb5SGmulYK5Voffx7TCU2jylIcrRXZK7ZCF1PLTv
 GBT/EvEsKJDA1puIjvs5VTIMBoboq4pJGJbIGNX7dRDCpMe/t6EwKtfOoI0D286mcN6E
 LoQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=FSjwGNOW0opjnBqjO5zohi7ls6ypUVJ8PL3V+CqTR98=;
 b=achZEpvqqbpXqFRgfDGMmbuhCBv/6sUPat87WDRAtah2zaaJKTlONo1wdqO7m5cY+3
 S+umMCgia3buWkizwq7K/4MTvSeuzzMNADZ1eNH0xMwnq05DnezgNIXT6oWjx23BaF4R
 j66rmTfQmHLHQLbQavXHvzl2o7CtvfCY3FdtaCLzcm7oMeeYU8wF+L9UBBPXyCUTl949
 MplMmR9+BN6NEOk9wsx27mmrQadSohIIWZWPSUIa3JiBJrXQZIizR9YX9UOEzltcue8h
 4nu1cmOIsawLgL+TEXbgn8uHwXocUmtdMOYypDxYX0zfz9t5CfD2H/keiDrhMFH4I6Oa
 uD2Q==
X-Gm-Message-State: APjAAAVLHNzd/D11jMankVGAbUgc6WsjXTuxupYON69Ft174e92/wyKZ
 KeHafT2ugUFTWEdfNb8EYMmSBeNk
X-Google-Smtp-Source: APXvYqyEy25/TVIczL/BaPvBB3oFmahDjtOnK/rtjw6n+tJAVL1KMGfNnzgJ0/cUsiQhuzOcOPxubQ==
X-Received: by 2002:a37:5d07:: with SMTP id r7mr25569926qkb.4.1563369484306;
 Wed, 17 Jul 2019 06:18:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id p3sm16332828qta.12.2019.07.17.06.18.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 06:18:03 -0700 (PDT)
Message-ID: <5D2F200A.70706@gmail.com>
Date: Wed, 17 Jul 2019 09:18:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
In-Reply-To: <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
Content-Type: multipart/mixed; boundary="===============5145167899948200034=="
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
--===============5145167899948200034==
Content-Type: multipart/alternative;
 boundary="------------020602030700090609020602"

This is a multi-part message in MIME format.
--------------020602030700090609020602
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/17/2019 07:45 AM, Sumit Kumar via USRP-users wrote:
> Hi Jason,
>
> Yes they are consistent, I mean the output of uhd_usrp_probe for both 
> N200 is exactly the same (except the ip, serial and mac addr).
> I do not know where the problem is! Hardware or software
>
> Regards
> Sumit
My guess is that you have a hardware issue.  Have you tried simple 
things, like a different ethernet cable?


>
> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak 
> <jason@gardettoengineering.com <mailto:jason@gardettoengineering.com>> 
> wrote:
>
>     I am not really an N-series guy, so this probably won't be
>     helpful.  Have you tried doing a uhd_usrp_probe on both devices
>     and seen that the responses are consistent?
>
>     ------------------------------------------------------------------------
>     *From:* USRP-users <usrp-users-bounces@lists.ettus.com
>     <mailto:usrp-users-bounces@lists.ettus.com>> on behalf of Sumit
>     Kumar via USRP-users <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>>
>     *Sent:* Wednesday, July 17, 2019 7:15 AM
>     *To:* usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>>
>     *Subject:* [USRP-users] Sequence Errors N200
>     Hi,
>     I am trying transmit using Ettus N200 (call it A) but getting this
>     error message on the console
>
>     SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................
>
>     I looked for it on google and found these links
>     http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html
>     http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html
>
>     Both the links  suggested problem related to the gigabit port.
>     Then I connected another USRP N200 (call it B) to the same laptop
>     and tried transmitting using that as there were no such sequence
>     error messages.
>
>     This makes me believe there is some problem with the first USRP,
>     i.e., A.
>
>     Further I tried with different versions of UHD 3.11, UHD 3.15..
>     but its the same.
>
>     Receive is good only transmit is throwing error.
>
>     Not only with UHD, even in labview, when I transmit, I see nothing
>     coming out from the N200 (A).
>
>     I am using SBXv2 daughter board.
>
>     Any clue!
>
>     Regards
>     -- 
>     -- 
>     Sumit kumar
>     Postdoc
>     SnT, Luxembourg
>
>
>
>
> -- 
> -- 
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------020602030700090609020602
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/17/2019 07:45 AM, Sumit Kumar via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Jason,
        <div><br>
          <div>Yes they are consistent, I mean the output of
            uhd_usrp_probe for both N200 is exactly the same (except the
            ip, serial and mac addr).</div>
          <div>I do not know where the problem is! Hardware or software </div>
          <div><br>
          </div>
          <div>Regards</div>
          <div>Sumit  <br>
          </div>
        </div>
      </div>
    </blockquote>
    My guess is that you have a hardware issue.  Have you tried simple
    things, like a different ethernet cable?<br>
    <br>
    <br>
    <blockquote
cite="mid:CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Jul 17, 2019 at 1:19
          PM Jason Matusiak &lt;<a moz-do-not-send="true"
            href="mailto:jason@gardettoengineering.com">jason@gardettoengineering.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I
              am not really an N-series guy, so this probably won't be
              helpful.  Have you tried doing a uhd_usrp_probe on both
              devices and seen that the responses are consistent?</div>
            <div id="gmail-m_9014729813065413461Signature">
              <div>
                <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                </div>
                <hr style="display:inline-block;width:98%">
                <div id="gmail-m_9014729813065413461divRplyFwdMsg"
                  dir="ltr"><font style="font-size:11pt" color="#000000"
                    face="Calibri, sans-serif"><b>From:</b> USRP-users
                    &lt;<a moz-do-not-send="true"
                      href="mailto:usrp-users-bounces@lists.ettus.com"
                      target="_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
                    on behalf of Sumit Kumar via USRP-users &lt;<a
                      moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                    <b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
                    <b>To:</b> <a moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>
                    &lt;<a moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                    <b>Subject:</b> [USRP-users] Sequence Errors N200</font>
                  <div> </div>
                </div>
                <div>
                  <div dir="ltr">Hi, 
                    <div>I am trying transmit using Ettus N200 (call it
                      A) but getting this error message on the console </div>
                    <div><br>
                    </div>
                    <div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................<br>
                    </div>
                    <div><br>
                    </div>
                    <div>I looked for it on google and found these
                      links </div>
                    <div><a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html"
                        target="_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html</a><br>
                    </div>
                    <div><a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html"
                        target="_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
                    </div>
                    <div><br>
                    </div>
                    <div>Both the links  suggested problem related to
                      the gigabit port. Then I connected another USRP
                      N200 (call it B) to the same laptop and tried
                      transmitting using that as there were no such
                      sequence error messages.</div>
                    <div><br>
                    </div>
                    <div>This makes me believe there is some problem
                      with the first USRP, i.e., A. <br>
                    </div>
                    <div><br>
                    </div>
                    <div>Further I tried with different versions of UHD
                      3.11, UHD 3.15.. but its the same. </div>
                    <div><br>
                    </div>
                    <div>Receive is good only transmit is throwing
                      error. </div>
                    <div><br>
                    </div>
                    <div>Not only with UHD, even in labview, when I
                      transmit, I see nothing coming out from the N200
                      (A). </div>
                    <div><br>
                    </div>
                    <div>I am using SBXv2 daughter board. </div>
                    <div><br>
                    </div>
                    <div>Any clue!</div>
                    <div><br>
                    </div>
                    <div>Regards</div>
                    <div>-- <br>
                      <div dir="ltr"
                        class="gmail-m_9014729813065413461x_gmail_signature">
                        <div dir="ltr">
                          <div>
                            <div dir="ltr"><span
                                style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
style="color:rgb(136,136,136);font-size:12.8px">
                              <div
                                style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                kumar<br>
                                Postdoc</div>
                              <div
                                style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                Luxembourg</div>
                              <div
                                style="color:rgb(136,136,136);font-size:12.8px"><br>
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr">
          <div>
            <div dir="ltr"><span
                style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                style="color:rgb(136,136,136);font-size:12.8px">
              <div style="color:rgb(136,136,136);font-size:12.8px">Sumit
                kumar<br>
                Postdoc</div>
              <div style="color:rgb(136,136,136);font-size:12.8px">SnT,
                Luxembourg</div>
              <div style="color:rgb(136,136,136);font-size:12.8px"><br>
              </div>
              <br>
            </div>
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

--------------020602030700090609020602--


--===============5145167899948200034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5145167899948200034==--

