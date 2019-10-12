Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A041BD4CBC
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2019 06:19:04 +0200 (CEST)
Received: from [::1] (port=52964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ8rr-0004nT-H8; Sat, 12 Oct 2019 00:18:59 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:35938)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iJ8rn-0004id-KQ
 for usrp-users@lists.ettus.com; Sat, 12 Oct 2019 00:18:55 -0400
Received: by mail-qk1-f174.google.com with SMTP id y189so10862052qkc.3
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 21:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=IVGf9Fk6kZD9cMRET8CyL79GBWgkZZkK4ttuaWgdbVI=;
 b=g35VBDMiM1ximjC0WTTMNJGKXHBA3K18x1SVB3zydmv8fwmDblV7uTXW4hvWgtnqEy
 uTm7htTx+IwM6EiLNIyNNiJwGoRIxvV9ZbirIlvRWtSOfbuvOFIvodaiPubuXoqX8h4c
 JvVZEPwaijWMyEzhzvWkjUIRbSjRrBhF7y1UsgUCQtqN85kQh9dZ5L1OGWqmMhKePW7T
 RNBUxuqcVALmSFZYI/Evo+83AmsejzNUmkRfcbjEZ9u7115prRxwmR+BxtWc1MqNH/0l
 Zuw/HN1feYEyCF5ry16GVCJ3wmYv979rBbIowkLl+o4FM9jLK4GGPOoDfjgG3jbJnaam
 Uikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=IVGf9Fk6kZD9cMRET8CyL79GBWgkZZkK4ttuaWgdbVI=;
 b=tvEe0eIiPp4jHhgUuVaO2OpKZnUY1j7GP1LH7R66623wh3mA8ZFsOFuH5vVUTCqbFM
 /54HgEwFlvsOK3EovCkJN/r7dbSYvPD9fsKUuZ0PiZY2aENwtehjRJfUM2bD40uQYX4q
 N4ODR63klVFa97WZ1vLCVUn04LZp4cHDFler90Dq1lJClYM9Y87brWI0x2O0kwYWOxm7
 qKf6El4CwaLxV2IZDPygxd6CFsyyU4Z/oFP1l+tfepcu2h3IHZAyGZOVUdilr9cFCCze
 LmQHanols20wMd83ClR1EFHk/pHTqPloD7nGeCBXAWs7uSjzNNgOt7zMwNbV7lj+MiPC
 2kOw==
X-Gm-Message-State: APjAAAWbXOoDZyBgTclY+PWZ6faH77xOzHehfoYH5mbhZrvWseiOe8gG
 ACOke4somCsjE2VZGNaY0d5zr62iSxE=
X-Google-Smtp-Source: APXvYqxmkkZ/9Z00k/If8eLIPKeGPrnCjAxXgKIPD9IadzLXIyD2LwsMgcmcEI9DIsR4JKbjwRJ/uQ==
X-Received: by 2002:a37:7dc2:: with SMTP id y185mr6639007qkc.348.1570853894740; 
 Fri, 11 Oct 2019 21:18:14 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id 54sm6802346qts.75.2019.10.11.21.18.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 21:18:13 -0700 (PDT)
Message-ID: <5DA15405.3010504@gmail.com>
Date: Sat, 12 Oct 2019 00:18:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPRRyxvV56pg34Bc_bo=yfcPO_7PbntX_+4naPRjTjCa+TJn0g@mail.gmail.com>
 <CANf970b6=BcG3Tq1wgFju2cBb24Lr6G7O4UDQnahK9OQ5eMHkA@mail.gmail.com>
 <CAPRRyxu=_8+X0ko+fseyDRKqs_=k=inW1k+jj2oP6vSMg+x3Kg@mail.gmail.com>
 <CAPRRyxuST9uHT-PekP67=jWDn2j9nkN1xeaizoaOF3wJW8H8HQ@mail.gmail.com>
 <CANf970Z2XWUWx-PwFooRNBqatwhAgmXYtAyijELSeRTqu+GaDg@mail.gmail.com>
In-Reply-To: <CANf970Z2XWUWx-PwFooRNBqatwhAgmXYtAyijELSeRTqu+GaDg@mail.gmail.com>
Subject: Re: [USRP-users] Fwd: Error handling D when reading data USRP N 210
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
Content-Type: multipart/mixed; boundary="===============8996857897391473858=="
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
--===============8996857897391473858==
Content-Type: multipart/alternative;
 boundary="------------080508070908010609040005"

This is a multi-part message in MIME format.
--------------080508070908010609040005
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/11/2019 04:28 PM, Sam Reiter via USRP-users wrote:
> Ivan,
>
> Thanks for sending that along. From a software perspective, what 
> parameters do you input to your attached code to run it? I'm trying to 
> understand the data rates you're trying to sustain over the NIC you 
> have. I've been combing through this past USRP-users thread for some 
> additional insight:
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html
>
> Based on some of those suggestions, it might be wise to try finding 
> another NIC to bring into the equation.
>
> Sam
Indeed, I just noticed the 82574L/LM referenced in the original complaint.

Those types of NICs have issues that cause packet loss--there have been 
a few "workarounds" over the years in various kernels, but none of
   them actually 100% fix the underlying issue with those chips--they're 
basically broken.   You don't notice this with web-browsing and
   other TCP-based protocols, because those protocols do error recovery.




>
> On Wed, Oct 9, 2019 at 2:14 PM Ivan Zahartchuk via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>
>
>     ---------- Forwarded message ---------
>     От: *Ivan Zahartchuk* <adray0001@gmail.com
>     <mailto:adray0001@gmail.com>>
>     Date: ср, 9 окт. 2019 г. в 06:05
>     Subject: Re: [USRP-users] Error handling D when reading data USRP
>     N 210
>     To: Sam Reiter <sam.reiter@ettus.com <mailto:sam.reiter@ettus.com>>
>
>
>     CPU intel core i7 -3610QE 2.3 GGz
>     RAM 16 Gb
>      2 NIC intel 82574L gigabit ethernet and intel 82574LM gigabit
>     ethernet
>
>
>     вт, 8 окт. 2019 г. в 16:59, Sam Reiter <sam.reiter@ettus.com
>     <mailto:sam.reiter@ettus.com>>:
>
>         What hardware are you using on the host side? Specifically,
>         I'm interested in CPU, RAM, and NIC.
>
>         Sam Reiter
>
>         On Tue, Oct 8, 2019 at 6:22 AM Ivan Zahartchuk via USRP-users
>         <usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>> wrote:
>
>             Hello. When I read data from the board, error D
>             periodically passes. It leads to bursts in the spectrum
>             that fits in the figure. Please tell me how you can remove
>             this error or how it can be handled? I also attach the
>             code file.
>             errorD.png
>             _______________________________________________
>             USRP-users mailing list
>             USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------080508070908010609040005
Content-Type: multipart/related;
 boundary="------------020503070906070201060006"


--------------020503070906070201060006
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/11/2019 04:28 PM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANf970Z2XWUWx-PwFooRNBqatwhAgmXYtAyijELSeRTqu+GaDg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Ivan,
        <div><br>
        </div>
        <div>Thanks for sending that along. From a software perspective,
          what parameters do you input to your attached code to run it?
          I'm trying to understand the data rates you're trying to
          sustain over the NIC you have. I've been combing through this
          past USRP-users thread for some additional insight:</div>
        <div><br>
        </div>
        <div><a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html</a><br>
        </div>
        <div><br>
        </div>
        <div>Based on some of those suggestions, it might be wise to try
          finding another NIC to bring into the equation. </div>
        <div><br clear="all">
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div>
                  <div dir="ltr">Sam <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Indeed, I just noticed the 82574L/LM referenced in the original
    complaint.<br>
    <br>
    Those types of NICs have issues that cause packet loss--there have
    been a few "workarounds" over the years in various kernels, but none
    of<br>
      them actually 100% fix the underlying issue with those
    chips--they're basically broken.   You don't notice this with
    web-browsing and<br>
      other TCP-based protocols, because those protocols do error
    recovery.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CANf970Z2XWUWx-PwFooRNBqatwhAgmXYtAyijELSeRTqu+GaDg@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Oct 9, 2019 at 2:14 PM
          Ivan Zahartchuk via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr"><br>
            <br>
            <div class="gmail_quote">
              <div dir="ltr" class="gmail_attr">---------- Forwarded
                message ---------<br>
                От: <strong class="gmail_sendername" dir="auto">Ivan
                  Zahartchuk</strong> <span dir="auto">&lt;<a
                    moz-do-not-send="true"
                    href="mailto:adray0001@gmail.com" target="_blank">adray0001@gmail.com</a>&gt;</span><br>
                Date: ср, 9 окт. 2019 г. в 06:05<br>
                Subject: Re: [USRP-users] Error handling D when reading
                data USRP N 210<br>
                To: Sam Reiter &lt;<a moz-do-not-send="true"
                  href="mailto:sam.reiter@ettus.com" target="_blank">sam.reiter@ettus.com</a>&gt;<br>
              </div>
              <br>
              <br>
              <div dir="ltr">
                <div>CPU intel core i7 -3610QE 2.3 GGz</div>
                <div>
                  RAM 16 Gb<br>
                </div>
                <div> 2 NIC intel 82574L gigabit ethernet and intel
                  82574LM gigabit ethernet</div>
                <div><br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">вт, 8 окт. 2019 г. в
                  16:59, Sam Reiter &lt;<a moz-do-not-send="true"
                    href="mailto:sam.reiter@ettus.com" target="_blank">sam.reiter@ettus.com</a>&gt;:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">What hardware are you using on the host
                    side? Specifically, I'm interested in CPU, RAM, and
                    NIC.
                    <div><br clear="all">
                      <div>
                        <div dir="ltr">
                          <div dir="ltr">
                            <div>
                              <div dir="ltr">Sam Reiter </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Tue, Oct 8,
                      2019 at 6:22 AM Ivan Zahartchuk via USRP-users
                      &lt;<a moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="ltr">
                        <span lang="en"><span title="">
                            <span lang="en"><span title="">Hello.</span>
                              <span title="">When I read data from the
                                board, error D periodically passes. It
                                leads to bursts in the spectrum that
                                fits in the figure.</span> <span
                                title="">Please tell me how you can
                                remove this error or how it can be
                                handled?</span> <span title="">I also
                                attach the code file.</span></span>
                          </span></span>
                        <div><img
                            src="cid:part7.02020003.07070502@gmail.com"
                            alt="errorD.png" height="239" width="541"><br>
                        </div>
                        <span lang="en"><span title=""></span></span>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list<br>
                      <a moz-do-not-send="true"
                        href="mailto:USRP-users@lists.ettus.com"
                        target="_blank">USRP-users@lists.ettus.com</a><br>
                      <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                        rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
            </div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
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

--------------020503070906070201060006
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part7.02020003.07070502@gmail.com>

iVBORw0KGgoAAAANSUhEUgAAAswAAAE8CAYAAADUq+eeAAAAAXNSR0IArs4c6QAAAARnQU1B
AACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAHMESURBVHhe7d0HeBRFHwbwNwVIgBB6
Cb0IhCICAiJNioAd/ERUFMFesPcuig0bKAh2qoKgqIig2AVFEATpSCf00BJCgLRv5m4WNpvZ
y93l7nLl/T3P5Gb2dvd29za7/92bnYkCkCeSEoMave/Hfa1WYNSb32NXbl1c9vRDaLxwOF6b
vx95JVrjxtdvQvmvnsYbPx5QE5ZA65vewA3lZ+HZ13/CAdPcpMVLbkH7dktVyX2Ll7QV072n
SkREREREgZF5MkflnKLVq0NU+fbod34Z/DHzZ+zKVgMtZIRtDrHd0blLl3yJiIiIiChUmALm
KJRt0Q7NylZDzwdG4e0xY/H2Ww+jd7VY1O/3LF4d0gqxuek4kg4kJCY4A2cpKgGJidHITUtD
hk0gveD33/MlIiIiIqJQYQqY85CxdDJGDB+OF0Y870wvfIg/UrOR8uNYvDZrHXJyd2Lz1ixU
atwYldWUUWUbI7kWsGPTVpxwDiIiIiIiChv5qmTkZh7C3j17sMdIew/gaA6Qlb4fe4+cQF5e
Jlb+vACptfpicP9zkNykDfoM7o/mJ5fhx8VGnWYiIiIiovCRL2B2x8mNX2LchEXIanUlbr/r
enQpswbTx07F8nSGy0REREQUfiytZPgeW8kgIiIiolDispUMIiIiIiLKjwEzEREREZELDJiJ
iIiIiFxgwExERERE5AIDZiIiIiIiFxgwExERERG5wICZiIiIiMgFBsxERERERC4wYCYiIiIi
coEBMxERERGRCwyYiYiIiIhcYMBMREREROQCA2YiIiIiIhcYMBMRERERucCAmYiIiIjIBQbM
REREREQuMGAmIiIiInKBATMRERERkQsMmImIiIiIXGDATERERETkAgNmIiIiIiIXGDATERER
EbnAgJmIiIiIyAUGzERERERELjBgJiIiIiJyISABc9OmyacSEREREVEoCUjAvG7d2lOJiIiI
iCiUsEoGEREREZELDJiJiIiIiFxgwExERERE5AIDZiIiIiIiFxgwExERERG5wICZiIiIiMgF
BsxERERERC4wYCYiIiIicoEBMxERERGRCwyYiYiIiIhcYMBMREREROQCA2YiIiIiIhcYMBMR
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
XAAAAABJRU5ErkJggg==
--------------020503070906070201060006--

--------------080508070908010609040005--


--===============8996857897391473858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8996857897391473858==--

