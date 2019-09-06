Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44486AB858
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 14:47:53 +0200 (CEST)
Received: from [::1] (port=35284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6DeZ-0008Bp-A4; Fri, 06 Sep 2019 08:47:51 -0400
Received: from sun61.bham.ac.uk ([147.188.128.150]:50609)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <j.subash@bham.ac.uk>) id 1i6DeU-00084f-SJ
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 08:47:47 -0400
Received: from [147.188.128.54] (helo=mailer3)
 by sun61.bham.ac.uk with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <j.subash@bham.ac.uk>) id 1i6Ddp-000152-P7
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 13:47:05 +0100
Received: from eee980-93.bham.ac.uk ([147.188.93.140])
 by bham.ac.uk (envelope-from <j.subash@bham.ac.uk>)
 with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 id 1i6Ddp-0004m9-F6 for usrp-users@lists.ettus.com 
 using interface auth-smtp.bham.ac.uk; Fri, 06 Sep 2019 13:47:05 +0100
To: usrp-users@lists.ettus.com
References: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
 <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
 <41f739d3442449bd983706ba42de6405@bham.ac.uk>
 <16e12136-dd4d-470b-c5dc-eca9dd4a9901@decyben.com>
Message-ID: <8b346437-1042-b480-fdbe-6b764b3e25d1@bham.ac.uk>
Date: Fri, 6 Sep 2019 13:47:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <16e12136-dd4d-470b-c5dc-eca9dd4a9901@decyben.com>
Content-Language: en-GB
X-BHAM-SendViaRouter: yes
X-BHAM-AUTH-data: TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128 via
 147.188.128.21:465 (subashj)
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
From: J Subash via USRP-users <usrp-users@lists.ettus.com>
Reply-To: J Subash <j.subash@bham.ac.uk>
Content-Type: multipart/mixed; boundary="===============1607914096590595356=="
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
--===============1607914096590595356==
Content-Type: multipart/alternative;
 boundary="------------D2F3DFCDBAB6CCA0B94C647F"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------D2F3DFCDBAB6CCA0B94C647F
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Imad,


Thanks very much for your reply. Unfortunately that solution does not work.

Because if it reads 4 bytes (two int16_t in C/C++ parlance; <i2 in numpy 
world) which for argument sake holds 15, 16 (which are integers). These 
are then cast as floats which makes them 15.0 and 16.0 and then when 
viewed as np.complex64 becomes 15.0 + 16.0j.


I have had a look at the converters section in the uhd API 
(https://github.com/EttusResearch/uhd/tree/master/host/lib/convert) but 
can't get my head around the code.


Thanks.

On 06/09/2019 10:26, usrp-users@lists.ettus.com wrote:
>
> Hi Joeal,
>
>
> You may try something along the lines of:
>
>
> import numpy as np
>
> def read_from_file(file_name, count=-1):
>     dt = np.dtype('<i2')
>     samples = np.fromfile(file_name, dt, 
> count).astype(np.float32).view(np.complex64)
>     return samples
>
>
> So this reads samples as two-byte integers (assuming 
> little-endianness, hence the '<'), cast them to four-byte floats, and 
> then view the resulting array as an array of eight-byte I/Q complex 
> samples.
>
>
> Imad
>
>
> On 05/09/2019 22:51, Joeal Subash via USRP-users wrote:
>>
>> Hi Michael,
>>
>>
>> I am having to save as ' sc16' because of storage restrictions using 
>> a C++ program. I specifically need details on how to convert 'sc16' 
>> to float. Thanks.
>>
>> ------------------------------------------------------------------------
>> *From:* michael.dickens@ettus.com <michael.dickens@ettus.com>
>> *Sent:* 05 September 2019 19:33:46
>> *To:* Joeal Subash (Electronic, Electrical and Systems Engineering)
>> *Cc:* USRP list
>> *Subject:* Re: [USRP-users] sc16 - complex<int16_t> to numpy float
>> Hi JS - Maybe check out this Python example from UHD < 
>> https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py > 
>> ... it does Rx to file, and can save as NumPy format ... which could 
>> then presumably be easily read back into NumPy. - MLD
>>
>> On Thu, Sep 5, 2019 at 11:08 AM J Subash via USRP-users 
>> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>     Hi,
>>
>>     I am using a B200 to save samples on the host as 'short' (as
>>     described in the uhd <https://github.com/EttusResearch/uhd>/host
>>     <https://github.com/EttusResearch/uhd/tree/master/host>/examples
>>     <https://github.com/EttusResearch/uhd/tree/master/host/examples>/rx_samples_to_file.cpp),
>>     which I believe is complex<int16_t>.
>>
>>     I'd like to import this data into numpy and then convert it into
>>     floating point values. Is sc16 a fixed point representation, if
>>     yes what is the scaling factor. If no, how do I convert it into a
>>     numpy float in Python. Any help would be much appreciated. Thanks.
>>
>>     BW
>>
>>     JS
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>> -- 
>> Michael Dickens, Mac OS X Programmer
>>
>> Ettus Research Technical Support
>>
>> Email: support@ettus.com <mailto:support@ettus.com>
>>
>> Web: http://www.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

-- 
Joel

Joeal Subash
Research Fellow

Space Environment and Radio Engineering (SERENE) Group
LF04, Mechanical engineering building
University of Birmingham
Edgbaston Birmingham B15 2TT

j.subash@bham.ac.uk


--------------D2F3DFCDBAB6CCA0B94C647F
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Imad,</p>
    <p><br>
    </p>
    <p>Thanks very much for your reply. Unfortunately that solution does
      not work. <br>
    </p>
    <p>Because if it reads 4 bytes (two int16_t in C/C++ parlance;
      &lt;i2 in numpy world) which for argument sake holds 15, 16 (which
      are integers). These are then cast as floats which makes them 15.0
      and 16.0 and then when viewed as np.complex64 becomes 15.0 +
      16.0j.</p>
    <p><br>
    </p>
    <p>I have had a look at the converters section in the uhd API
      (<a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd/tree/master/host/lib/convert">https://github.com/EttusResearch/uhd/tree/master/host/lib/convert</a>)
      but can't get my head around the code.</p>
    <p><br>
    </p>
    <p>Thanks.<br>
    </p>
    <div class="moz-cite-prefix">On 06/09/2019 10:26,
      <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:16e12136-dd4d-470b-c5dc-eca9dd4a9901@decyben.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
        <style type="text/css" style="display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></style>
        <div id="divtagdefaultwrapper"
style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;"
          dir="ltr">
          <p>Hi Michael,</p>
          <p><br>
          </p>
          <p>I am having to save as ' sc16' because of storage
            restrictions using a C++ program. I specifically need
            details on how to convert 'sc16' to float. Thanks.</p>
        </div>
        <hr style="display:inline-block;width:98%" tabindex="-1">
        <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
            face="Calibri, sans-serif" color="#000000"><b>From:</b> <a
              class="moz-txt-link-abbreviated"
              href="mailto:michael.dickens@ettus.com"
              moz-do-not-send="true">michael.dickens@ettus.com</a> <a
              class="moz-txt-link-rfc2396E"
              href="mailto:michael.dickens@ettus.com"
              moz-do-not-send="true">&lt;michael.dickens@ettus.com&gt;</a><br>
            <b>Sent:</b> 05 September 2019 19:33:46<br>
            <b>To:</b> Joeal Subash (Electronic, Electrical and Systems
            Engineering)<br>
            <b>Cc:</b> USRP list<br>
            <b>Subject:</b> Re: [USRP-users] sc16 -
            complex&lt;int16_t&gt; to numpy float</font>
          <div> </div>
        </div>
        <div>
          <div dir="ltr">Hi JS - Maybe check out this Python example
            from UHD &lt; <a
href="https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py"
              moz-do-not-send="true">https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py</a> &gt;
            ... it does Rx to file, and can save as NumPy format ...
            which could then presumably be easily read back into NumPy.
            - MLD</div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Thu, Sep 5, 2019 at
              11:08 AM J Subash via USRP-users &lt;<a
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
                  'short' (as described in the <tt> <span
                      class="gmail-m_-7136052441403100718js-repo-root
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
                  point representation, if yes what is the scaling
                  factor. If no, how do I convert it into a numpy float
                  in Python. Any help would be much appreciated. Thanks.<br>
                </p>
                <p>BW</p>
                <p>JS<br>
                </p>
              </div>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href="mailto:USRP-users@lists.ettus.com"
                target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
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
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Joel

Joeal Subash
Research Fellow

Space Environment and Radio Engineering (SERENE) Group
LF04, Mechanical engineering building
University of Birmingham
Edgbaston Birmingham B15 2TT

<a class="moz-txt-link-abbreviated" href="mailto:j.subash@bham.ac.uk">j.subash@bham.ac.uk</a></pre>
  </body>
</html>

--------------D2F3DFCDBAB6CCA0B94C647F--


--===============1607914096590595356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1607914096590595356==--

