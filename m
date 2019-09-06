Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7334AB4E0
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 11:26:55 +0200 (CEST)
Received: from [::1] (port=39186 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6AW5-0003Du-DR; Fri, 06 Sep 2019 05:26:53 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36226)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <i.srairi@decyben.com>)
 id 1i6AW1-00039H-Cx
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 05:26:49 -0400
Received: by mail-wm1-f65.google.com with SMTP id p13so6267658wmh.1
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 02:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=decyben-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=4eQldmhVgQz5NMHMfaQymLGwEvJLe3ZQ+Vc05q3gYFI=;
 b=Fls05cp0KnbICDfMWmef31eujZ9k7luVp4YS4gVQYDmxpYb0ZN0mkEJsONj1IGQGyR
 pkIMnDP8BoGQmtR3npgBQhFnzvYaVBSRCmnlmhvASNyAVtyXxI+SbrEMJ1PKgsDJBgZm
 FDWYdCDKC4P0U4va5nngHghzB5lqMHeElKASRIElYndpWAFfHQ/k8mQxIzGM9qaqL/n3
 gE5Lz3hiqcQymCOUpnknJ4R2DAgd8Rr/UBWOKGb5zv68ZRoB8y0+seL2ddhfcoQgxZNa
 JvvKWoSbzviH0YV7Gm+w0A4GSh1JuWWP6MSvdnTL13KNKJSBHK2Pr7NK9ZDXFUX1I2Ei
 9EWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=4eQldmhVgQz5NMHMfaQymLGwEvJLe3ZQ+Vc05q3gYFI=;
 b=BmgNvVZxndAIy0tfm25oZYZ1yzwOm1juQfDrDi3eeFTHP6tuhP5PeugoQxJ82+UN6z
 TRLkaejukEgEXhNt5AmbwZxjyUAX2zYCoYBvTtEXuR/5qTeC8ls5w2zkvvzEt04aZ6cK
 4bL4Lp7yYc4mtjAH3ELEUYCxp2jXzCH9ZvctYvk3UaVXppWRwnN8PMM9gHHy5oDrGtqr
 gjtHZ/EoFN0uE3a0/7r5XMR8IDBx0h7ejq5FSIL4bxWQ8Bt1OTTBW+1Y+rCmiCl9Jw+X
 6aAQjUIp2jfxlCtWq01S0MSwan5EyZxeIYcBh7I7gt+Hzru3wAo6KUlr4Bj2SmNuyBmL
 RlYw==
X-Gm-Message-State: APjAAAXVXT9VfQbyg6Z68jP2ErJS6kR7bhteTC36aka3YpJ7T4QdylFN
 x1ZXyD8ekDhP0xNC0iG25qZ0GWbM1dA=
X-Google-Smtp-Source: APXvYqyvuk0xruvPy/V9VSQKBCPtCnb+iSAU6vvF0I6MU2YCs/Ode1IGpQa3oCcYDmjImz6Juu6KKg==
X-Received: by 2002:a1c:1acc:: with SMTP id a195mr6383561wma.106.1567761967939; 
 Fri, 06 Sep 2019 02:26:07 -0700 (PDT)
Received: from [192.168.213.201] ([83.202.97.187])
 by smtp.gmail.com with ESMTPSA id h17sm7366529wme.6.2019.09.06.02.26.07
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 02:26:07 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
 <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
 <41f739d3442449bd983706ba42de6405@bham.ac.uk>
Message-ID: <16e12136-dd4d-470b-c5dc-eca9dd4a9901@decyben.com>
Date: Fri, 6 Sep 2019 11:26:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <41f739d3442449bd983706ba42de6405@bham.ac.uk>
Content-Language: en-US
Subject: Re: [USRP-users] sc16 - complex<int16_t> to numpy float
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
From: Imad-Eddine Srairi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Imad-Eddine Srairi <i.srairi@decyben.com>
Content-Type: multipart/mixed; boundary="===============3815249027764874184=="
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
--===============3815249027764874184==
Content-Type: multipart/alternative;
 boundary="------------C79E118EC6EFE6D9A210E252"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C79E118EC6EFE6D9A210E252
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Joeal,


You may try something along the lines of:


import numpy as np

def read_from_file(file_name, count=-1):
     dt = np.dtype('<i2')
     samples = np.fromfile(file_name, dt, 
count).astype(np.float32).view(np.complex64)
     return samples


So this reads samples as two-byte integers (assuming little-endianness, 
hence the '<'), cast them to four-byte floats, and then view the 
resulting array as an array of eight-byte I/Q complex samples.


Imad


On 05/09/2019 22:51, Joeal Subash via USRP-users wrote:
>
> Hi Michael,
>
>
> I am having to save as ' sc16' because of storage restrictions using a 
> C++ program. I specifically need details on how to convert 'sc16' to 
> float. Thanks.
>
> ------------------------------------------------------------------------
> *From:* michael.dickens@ettus.com <michael.dickens@ettus.com>
> *Sent:* 05 September 2019 19:33:46
> *To:* Joeal Subash (Electronic, Electrical and Systems Engineering)
> *Cc:* USRP list
> *Subject:* Re: [USRP-users] sc16 - complex<int16_t> to numpy float
> Hi JS - Maybe check out this Python example from UHD < 
> https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py > 
> ... it does Rx to file, and can save as NumPy format ... which could 
> then presumably be easily read back into NumPy. - MLD
>
> On Thu, Sep 5, 2019 at 11:08 AM J Subash via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi,
>
>     I am using a B200 to save samples on the host as 'short' (as
>     described in the uhd <https://github.com/EttusResearch/uhd>/host
>     <https://github.com/EttusResearch/uhd/tree/master/host>/examples
>     <https://github.com/EttusResearch/uhd/tree/master/host/examples>/rx_samples_to_file.cpp),
>     which I believe is complex<int16_t>.
>
>     I'd like to import this data into numpy and then convert it into
>     floating point values. Is sc16 a fixed point representation, if
>     yes what is the scaling factor. If no, how do I convert it into a
>     numpy float in Python. Any help would be much appreciated. Thanks.
>
>     BW
>
>     JS
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> -- 
> Michael Dickens, Mac OS X Programmer
>
> Ettus Research Technical Support
>
> Email: support@ettus.com <mailto:support@ettus.com>
>
> Web: http://www.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------C79E118EC6EFE6D9A210E252
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Joeal,</p>
    <p><br>
    </p>
    <p>You may try something along the lines of:</p>
    <p><br>
    </p>
    <p><font size="+1"><tt>import numpy as np</tt></font><br>
      <br>
    </p>
    <p><font size="+1"><tt>def read_from_file(file_name, count=-1):</tt><tt><br>
        </tt><tt>    dt = np.dtype('&lt;i2')</tt><tt><br>
        </tt><tt>    samples = np.fromfile(file_name, dt,
          count).astype(np.float32).view(np.complex64)</tt><tt><br>
        </tt><tt>    return samples</tt></font><br>
    </p>
    <p><br>
    </p>
    <p>So this reads samples as two-byte integers (assuming
      little-endianness, hence the '&lt;'), cast them to four-byte
      floats, and then view the resulting array as an array of
      eight-byte I/Q complex samples.<br>
    </p>
    <p><br>
    </p>
    <p>Imad</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 05/09/2019 22:51, Joeal Subash via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:41f739d3442449bd983706ba42de6405@bham.ac.uk">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
      <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
        dir="ltr">
        <p>Hi Michael,</p>
        <p><br>
        </p>
        <p>I am having to save as ' sc16' because of storage
          restrictions using a C++ program. I specifically need details
          on how to convert 'sc16' to float. Thanks.</p>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          face="Calibri, sans-serif" color="#000000"><b>From:</b>
          <a class="moz-txt-link-abbreviated" href="mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a> <a class="moz-txt-link-rfc2396E" href="mailto:michael.dickens@ettus.com">&lt;michael.dickens@ettus.com&gt;</a><br>
          <b>Sent:</b> 05 September 2019 19:33:46<br>
          <b>To:</b> Joeal Subash (Electronic, Electrical and Systems
          Engineering)<br>
          <b>Cc:</b> USRP list<br>
          <b>Subject:</b> Re: [USRP-users] sc16 - complex&lt;int16_t&gt;
          to numpy float</font>
        <div> </div>
      </div>
      <div>
        <div dir="ltr">Hi JS - Maybe check out this Python example from
          UHD &lt; <a
href="https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py"
            moz-do-not-send="true">https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py</a> &gt;
          ... it does Rx to file, and can save as NumPy format ... which
          could then presumably be easily read back into NumPy. - MLD</div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, Sep 5, 2019 at 11:08
            AM J Subash via USRP-users &lt;<a
              href="mailto:usrp-users@lists.ettus.com"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <p>Hi,</p>
              <p>I am using a B200 to save samples on the host as
                'short' (as described in the <tt>
                  <span class="gmail-m_-7136052441403100718js-repo-root
                    gmail-m_-7136052441403100718text-bold"><span
                      class="gmail-m_-7136052441403100718js-path-segment"><a
                        href="https://github.com/EttusResearch/uhd"
                        target="_blank" moz-do-not-send="true"><span>uhd</span></a></span></span></tt><tt><span
                    class="gmail-m_-7136052441403100718separator">/</span></tt><tt><span
                    class="gmail-m_-7136052441403100718js-path-segment"><a
href="https://github.com/EttusResearch/uhd/tree/master/host"
                      target="_blank" moz-do-not-send="true"><span>host</span></a></span></tt><tt><span
                    class="gmail-m_-7136052441403100718separator">/</span></tt><tt><span
                    class="gmail-m_-7136052441403100718js-path-segment"><a
href="https://github.com/EttusResearch/uhd/tree/master/host/examples"
                      target="_blank" moz-do-not-send="true"><span>examples</span></a></span></tt><tt><span
                    class="gmail-m_-7136052441403100718separator">/</span></tt><tt><span
                    class="gmail-m_-7136052441403100718final-path">rx_samples_to_file.cpp),</span></tt>
                which I believe is complex&lt;int16_t&gt;.  <br>
              </p>
              <p>I'd like to import this data into numpy and then
                convert it into floating point values. Is sc16 a fixed
                point representation, if yes what is the scaling factor.
                If no, how do I convert it into a numpy float in Python.
                Any help would be much appreciated. Thanks.<br>
              </p>
              <p>BW</p>
              <p>JS<br>
              </p>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
              moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
            <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        <div dir="ltr" class="gmail_signature">
          <div dir="ltr">Michael Dickens, Mac OS X Programmer<br>
            <br>
            Ettus Research Technical Support<br>
            <br>
            Email: <a href="mailto:support@ettus.com" target="_blank"
              moz-do-not-send="true">support@ettus.com</a><br>
            <br>
            Web: <a href="http://www.ettus.com" target="_blank"
              moz-do-not-send="true">http://www.ettus.com</a></div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------C79E118EC6EFE6D9A210E252--


--===============3815249027764874184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3815249027764874184==--

